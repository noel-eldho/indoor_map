import 'package:directed_graph/directed_graph.dart';
import 'package:flutter/material.dart';
import 'main.dart';

int comparator(
  String s1,
  String s2,
) {
  return s1.compareTo(s2);
}

final a = '301';
final b = '302';
final c = '303';
final d = '304';
final e = '305';
final f = '306';
final g = '307';
final h = '309';
final i = '310';
final j = '311';
final k = '312';
final l = '313';
final m = '314';
final n = '315';
final o = '316';
final p = '317';
final q = '318';
final r = '319';
final s = '201';
final t = '202';
final u = '203';
final v = '204';
final w = '205';
final x = '206';
final y = '207';
final z = '208';
final aa = '209';
final ab = '210';
final ac = '211';
final ad = '212';
final ae = '213';
final af = '214';
final ag = '215';
final ah = '216';
final ai = '217';
final aj = '218';
final ak = '219';

int sum(int left, int right) => left + right;

var graph1 = WeightedDirectedGraph<String, int>(
  {
    a: {b: 175},
    b: {a: 175, o: 792},
    c: {o: 1240, d: 1331},
    d: {c: 1331, e: 385},
    e: {d: 385, f: 381, r: 678},
    f: {e: 381, g: 586},
    g: {f: 586, i: 2004},
    h: {i: 990},
    i: {g: 2004, h: 990, p: 226},
    j: {k: 1023, q: 315},
    k: {j: 1023, l: 2236},
    l: {k: 2236, m: 650},
    m: {l: 650, n: 180},
    n: {m: 180, o: 1342},
    o: {b: 792, n: 1342, c: 1240, ai: 300},
    p: {i: 226, q: 261, aj: 300},
    q: {p: 261, j: 315},
    r: {e: 678, af: 415},
    s: {t: 159},
    t: {s: 159, ai: 838},
    u: {ai: 656, v: 185},
    v: {u: 185, w: 817},
    w: {v: 817, x: 182},
    x: {w: 182, y: 1074},
    y: {x: 1074, z: 601},
    z: {y: 601, aa: 646},
    aa: {z: 646, ah: 1175},
    ab: {aj: 250, ac: 1005, ad: 2568},
    ac: {ab: 1005},
    ad: {ab: 2568, ae: 268, af: 531},
    ae: {ad: 268},
    af: {ad: 531, r: 415, ag: 596},
    ag: {af: 596, ak: 355, ai: 2504},
    ah: {aa: 1175, aj: 229},
    ai: {t: 838, u: 656, ag: 2504, o: 300},
    aj: {ah: 229, ab: 250, p: 300},
    ak: {ag: 355}
  },
  summation: sum,
  zero: 0,
  comparator: comparator,
);

//final shortestPath = graph1.shortestPath(a, h);
List<String> pathfindalgo(var start, var stop, var flag) {
  if (flag == 0) {
    return graph1.shortestPath(start, stop);
  } else if (flag == 1) {
    if (start[0] == '2')
      return graph1.shortestPath(start, ak) + graph1.shortestPath(d, stop);
    else
      return graph1.shortestPath(start, d) + graph1.shortestPath(ak, stop);
  } else
    return graph1.shortestPath(start, stop);
  return [];
  //print('$shortestPath weight: ${graph1.weightAlong(shortestPath)}');
}
