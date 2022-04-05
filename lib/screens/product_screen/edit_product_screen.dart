import 'package:flutter/material.dart';
import 'package:ibdaa/models/product_provider/products.dart';
import 'package:ibdaa/style/colorapp.dart';
import 'package:provider/provider.dart';

import '../../models/product_provider/product_provider_new.dart';
import '../../widgets/drawer.dart';


class EditProductScreen extends StatefulWidget {
  static const routeName = '/EditProductScreen';

  EditProductScreen({Key? key}) : super(key: key);

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _priceFocusNode = FocusNode();
  final _descriptionFocusNode = FocusNode();
  final _imgFocusNode = FocusNode();
  final _imageUrlController = TextEditingController();
  final _form = GlobalKey<FormState>();

  var _EditedProduct =
      Product(id: null, title: '', description: '', price: 0, imageUrl: '');

  @override
  void initState() {
    _imgFocusNode.addListener(_updateImageUrl);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _imgFocusNode.removeListener(_updateImageUrl);
    _priceFocusNode.dispose();
    _descriptionFocusNode.dispose();
    _imageUrlController.dispose();
    _imgFocusNode.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  void _updateImageUrl() {
    if (_imgFocusNode.hasFocus) {
      if (_imageUrlController.text.isEmpty ||
          !_imageUrlController.text.startsWith('http') &&
              !_imageUrlController.text.startsWith('https') ||
          !_imageUrlController.text.endsWith('.jpg') &&
              !_imageUrlController.text.endsWith('.png') &&
              !_imageUrlController.text.endsWith('.jpeg')) {
        return;
      }

      setState(() {});
    }
  }

  void _saveForm() {


    var isVal = _form.currentState!.validate();
    if (!isVal) {
      return;
    } else {
      _form.currentState!.save();
      Provider.of<ProductProviderCart>(context , listen: false).addProduct(_EditedProduct);
      Navigator.of(context).pop();
      print(_EditedProduct.title);
      print(_EditedProduct.price);
      print(_EditedProduct.description);
      print(_EditedProduct.imageUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        title: Text('أضافة منتج', style: TextStyle(color: ColorStyle().color1), ),
        actions: [IconButton(onPressed: _saveForm, icon: Icon(Icons.save , color: ColorStyle().color1,))],

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _form,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Center(
                  child: Image.asset('assets/images/factory-production.png'),
                ),
                TextFormField(

                  decoration: InputDecoration(label: Text('اسم المنتج'),
                      prefixIcon: Icon(Icons.shopping_basket_outlined)

                  ),
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_priceFocusNode);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الرجاء ادخال اسم المنتج';
                    }
                  },
                  onSaved: (value) {
                    _EditedProduct = Product(
                      title: value,
                      description: _EditedProduct.description,
                      price: _EditedProduct.price,
                      imageUrl: _EditedProduct.imageUrl,
                    );
                  },
                ),
                TextFormField(
                  focusNode: _priceFocusNode,
                  decoration: InputDecoration(label: Text('السعر') ,
                      prefixIcon: Icon(Icons.payment)
                  ),

                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_descriptionFocusNode);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الرجاء ادخال سعر المنتج';
                    }
                    if (double.tryParse(value) == null) {
                      return 'الرجاء ادخال رقم';
                    }
                    if (double.parse(value) <= 0){
                      return 'الرجاء ادخال السعر اكبر من صفر';
                    }

                  },
                  onSaved: (value) {
                    _EditedProduct = Product(
                      title: _EditedProduct.title,
                      description: _EditedProduct.description,
                      price: double.parse(value!),
                      imageUrl: _EditedProduct.imageUrl,
                    );
                  },
                ),
                TextFormField(
                  maxLines: 3,
                  focusNode: _descriptionFocusNode,
                  decoration: const InputDecoration(label: Text('الوصف'),
                      prefixIcon: Icon(Icons.description_outlined)),
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(_imgFocusNode);
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'الرجاء ادخال الوصف.';
                    }
                    if (value.length < 10) {
                      return 'الوصف يجب ان يكون على الاقل 10 حروف';
                    }
                  },
                  onSaved: (value) {
                    _EditedProduct = Product(
                      title: _EditedProduct.title,
                      description: value,
                      price: _EditedProduct.price,
                      imageUrl: _EditedProduct.imageUrl,
                    );
                  },
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: _imageUrlController.text.isEmpty
                          ? Center(child: Image.asset('assets/images/picture.png' , fit: BoxFit.cover,))
                          : Image.network(_imageUrlController.text,
                              fit: BoxFit.cover),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _imageUrlController,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.url,
                          focusNode: _imgFocusNode,
                          decoration: InputDecoration(label: Text('رابط الصورة') ,

                          prefixIcon: Icon(Icons.link_outlined)
                          ),
                          onFieldSubmitted: (_) {
                            return _saveForm() ;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'الرجاء ادخال رابط';
                            }
                            if (!value.startsWith('http') &&
                                !value.startsWith('https') ) {
                              return 'Please enter valid URL.';
                            }
                            if (!value.endsWith('.jpg') &&
                                !value.endsWith('.png') &&
                                !value.endsWith('.jpeg') ) {
                              return 'الرجاء ادخال رابط لصورة';
                            }
                          },
                          onSaved: (value) {
                            _EditedProduct = Product(
                              title: _EditedProduct.title,
                              description: _EditedProduct.description,
                              price: _EditedProduct.price,
                              imageUrl: value,

                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
