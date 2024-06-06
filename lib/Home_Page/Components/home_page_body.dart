import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 4,
          child: Container(
            width: 940,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                offset: const Offset(1, 1),
                spreadRadius: 4,
                blurRadius: 6,
                color: Colors.black.withOpacity(0.2),
              )
            ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Icon(Icons.filter_alt_outlined),
                          Text("Filter")
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          Text("Sort By"),
                          Icon(Icons.arrow_drop_down),
                          Icon(Icons.list_outlined)
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: 20, // Change this to your item count
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
            itemBuilder: (ctx, i) => const ProductItem(),
          ),
        ),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showFilterModal(context);
      },
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Product Title',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '\$79.00',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  Icon(Icons.star_border, color: Colors.amber, size: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showFilterModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return const FilterModal();
      },
    );
  }
}

class FilterModal extends StatefulWidget {
  const FilterModal({super.key});

  @override
  State<FilterModal> createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  bool _newest = false;
  bool _oldest = false;
  bool _priceLowToHigh = false;
  bool _priceHighToLow = false;
  bool _bestSelling = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 380,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              'Filter',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Checkbox(
                value: _newest,
                tristate: false,
                checkColor: Colors.white,
                activeColor: Colors.red,
                side: const BorderSide(color: Colors.black),
                onChanged: (change) {
                  setState(() {
                    _newest = change!;
                  });
                },
              ),
              const SizedBox(width: 8),
              const Text(
                'Newest',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: _oldest,
                tristate: false,
                checkColor: Colors.white,
                activeColor: Colors.red,
                side: const BorderSide(color: Colors.black),
                onChanged: (change) {
                  setState(() {
                    _oldest = change!;
                  });
                },
              ),
              const SizedBox(width: 8),
              const Text(
                'Oldest',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: _priceLowToHigh,
                tristate: false,
                checkColor: Colors.white,
                activeColor: Colors.red,
                side: const BorderSide(color: Colors.black),
                onChanged: (change) {
                  setState(() {
                    _priceLowToHigh = change!;
                  });
                },
              ),
              const SizedBox(width: 8),
              const Text(
                'Price low > High',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: _priceHighToLow,
                tristate: false,
                checkColor: Colors.white,
                activeColor: Colors.red,
                side: const BorderSide(color: Colors.black),
                onChanged: (change) {
                  setState(() {
                    _priceHighToLow = change!;
                  });
                },
              ),
              const SizedBox(width: 8),
              const Text(
                'Price high > Low',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: _bestSelling,
                tristate: false,
                checkColor: Colors.white,
                activeColor: Colors.red,
                side: const BorderSide(color: Colors.black),
                onChanged: (change) {
                  setState(() {
                    _bestSelling = change!;
                  });
                },
              ),
              const SizedBox(width: 8),
              const Text(
                'Best selling',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.white54,
                ),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.green,
                ),
                child: const Text('Apply'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* 
CheckboxListTile(
            title: const Text('Best selling'),
            value: _bestSelling,
            onChanged: (value) {
              setState(() {
                _bestSelling = value!;
              });
            },
          ), */