#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY4\� t���0�����������V��l��� �0 0 @ `,�}���m�ݺ�yy�Ɲ�+m�j�}]��Ӣ�t:t�}�l��kcg]ئ�}ܨ�{wd��(=��ۗUzk�����+�];�wFr�5}tr[Y!�J�2�Z����J!2i�M &��h��z50�S�i?��I�Q�Q����    ��<��&&<$؆��A��M4FC@   �	&��La@4=@�F��     4 z $Ԉ!2M�eOM'��21&������FCFA� � D�d	��$�2L��	��S�F�)�S���  h@�$H 	�	��2�M�<��S����#�#�C�@�F���=M@Ѡ�T  cwb�z>c�y���w�O����CV��y޾�F����T&�{�ј�� �]Kn����u�d���)�f�ԉTe�5ca^t��"M*��r/k���yYin������j,��d$�,�JF̣�NT)_��k�Hӥ{Ϝ��I����̖N�f�d���}�CvϳHT%(T���.�6D\�m	v4�h���:�'�b6čt�1��x��9�^�Ǩ�"�ʗ���:3�$��� ���I��e��nW�8�p�q�"Z��G�Ƭ���̸�:X��^���9h���Brq%"�9׻�c=�����ͳ��v��S�Wꔰ�#�%�PV?;������f��Lhi�n��&m��c��￲�jٚdކ��Ϸ^�����9��s����ȩ���TVF1]��>��w4.}���񴣵u@q)W�����|)����\��;����]]�&���`�ܤ��4���\�Q����-wZ�QXDsO;��&ŚT���ݲ18�"H��z��p���zn|
2�	�3	eP$�9͚&�1�ϥ*%�C*�@����xm���m��a{�O��p�WG*¯�,vJCʟ�RUv>4A+~J{=����~�Vv�>��������
��_R�\�P_�÷��h��{z4��%�Hd�^4���v�^���I�1:�����"RhRd�ؙ�u�Q�����.R�Rf�պocI���j+$�[IJ�[�ƭ��!��9쌜X�U�ְJ���H�a�ّ�`���i�L[|�6�G3��|`����
�6!�����=���Ή2J���'���zB�7��簟�
��1��gj܎��0�"ݨ�5�᭛�GN��QX�eJ���M[Y>�W�Wb	�װR�7����1o�����?�P~�C��0
lp_��-�c	�)�Ii!� ��2+K�+�
P�$/v�lm�؍v3ۥ� �7"�\k�jg� ��`"J@)���JƛðE��a����mM���ݼgw�;�� 4�3B�@�̵X�x!
cH�ĊI"Q�vg�9d�婯� ��t{9���f"�RE�������A����� �����ShD�&؉�˻+?�q5�k�l8RB;���`�����ầ�Ә|F����Ge�{���8�Б��K�pc�u�*!SĴ�����l|>�A���]"�/�F��0��P_~i�E��=�����aM�h�B'���3Z�d��<�ZL0.a0V��a'E���$���Ȍ/�Nʚרg�?�1���gĒ|�N^pM	����Or�D��$̸!C�T�D��M��������%u\�M�����_n�"� �����v�\�M6�CX�� ��|޾Y�y��[�����[�Q �h+u�(���*T�e�$T������.6���mB�y|\l�n5��4�&�v��X�'ݴ"a�_��F�3RJ~��{�͓�B�oѰ�7u\t�M�4��Ky�V�(�!���>d���=��6I��O�Lc�c��$�aؾ��NO%�y�cNyZ�g�
�}��ӟ,m��u��[���#�t5A�D�F�P��/�	�I a<=5���P �8L�TX����%�hА�ADg����|�8�wlղ��*eu���>�ۊ�5��)ƚpGҪ=�@R��[6�H��5 �TG���r���_O����$��v��ŵ�`;����F����Tgǵ!�e�ٵ]ܵ�iƭ�=�7i��,�ͅ0t/D�$hԩZ-���"�Ё�UN�;Q�<h�7K(�q"g�ی�,\ƇEb���Ln]��ɩ�M����%�Sm�:�/��o2�lj���y�1lt5���Ec�kV��	����EQA,)�hJM������2̽��<�?�滴���^�L�s���l1lB�
@�+chYH"!��rB��������]�rm0;s�kh�6eT��P���`]��^"��Oe�U&Sj��s5EG(�S����L6�JIɧʼ/��=}�����,Z~Kv4�B�Z����ǡ:���jt����8k
伻'�$�^��!!��*�G�qv��U<|�7O���h��})dvy��"#9�nd�n��*�Q�\,�\Zw�C˸7?��_�x������閹/b��)z�hAS!��Y&�l���Hn���X%��溄";��v\֡'���ꔙ)��^�!��P���3��@��&j�?Q�|vgx{��h�}'��H灤��GUZ~ڤ��Ft������v颞�>��E���a:j�O�|i�;n�2�:3�m��DG�HM MZ{�\v�w	��b3f3�
Li�ժ�3N,g���T=a�v�mT�$(C}�wC�I8e��Q��!�ѿ0h�m�/C���&�}H���}��q��w?�C)T�{�7�x�j~�2��HF�������0/�*��v([���}��N��iJs�IS�]V�C���C�)(�QC���m
ruV��B��y�.�s�}�`m�[Z]V^Ol[����*t���ޛ5���������n;�xI�:���3��o��2�2�7�'�C���<��POy��������ƛ!x)��X>���@%��� �q@�3g����n���\�o{��i�כ��Mz�����0��̹�\�{��x�oV�/��x�-x@��V�I��_Z7���3�l�lkcW��*]~8��=J�*(��)R��IX"(�b�@Y9d�#Zu�V��82�MB��#U����1�3ep�-4=t�D��;b񣨲��S!��^���P�,�%�uAX��rEJ��!�[m�.8��wv�B�.���@ d�
A�o2Is.�B�D��x�9�)κ��*GE%�Ա	�V���0|,�����X �7 U"��Pr7L16�Rm���Έٍ@%Y���W7�q���mW� ���Q�"VX;�OBђ$GD�' �L�@�U%͟��pz�#���)��[��r�>�0;�k��sI:đ&N�$��7������L_o����FR�	~��I�[A�x�5��� ���b�j�Pu�fG⢤�e�.�%�Pb"���)g�~;��1S֔��Ő�˭��S��XC_�/�^�����S��|��F~�>�3�<�v,��C5�`i�I7�cϨ��f��|�1��Q��$�o>�j�r�xvkn�8Y�����VC{_��	B*l8��1T;V=Ҙ'�%5�oFϤ�j����?P�����cQV�C�1VT��z�����^�!�W/F?Cᓃ�������,��b�� �E)������
~�/����~�*��1�B(<�G������ϙ�}���~��m񓝓_Qi��aV��=�W��1ҹ+
���̰��.���]�-���a�q-y���:�.�]�MrSe���Gs�]�Sg��a��^�G�9
��&��0�+Nm8x�x��@`"Pr���^@��,V$�� 1HVz'U!#�x
I�M�C�,^c�Of$�2Wy8Ä]Sj?3ك�D���6C�7L��M>֡ڦ�?�6�X��ⴣ�%{��#`k@N��q��$� ��������.Oe�0i.�c�]5�����"U��P�R�$P��[{�4m,'���csھR�s��S��
r&︕n4ݻW������6�5DJ|=#<��>��"�牷�`׾�=5�����J�6
]�9�݇ضa��"� ��C x�����t��#�@�9GW���8ϵ����ϛ*�
�8D!p{^aab��A#Gq)ֿ-���S�O�ϧ�ļB����%��� 9F�z�D�֍+�[��n"��7N}�y�vZ��#m�%h�h����s����@��0J�L$B�n+��k�5�B���9���^� KOs�XI��q�A5�Cʈ$ ��{
����"g�m�� ~',1�!k��� ]?}A�\4��8#�A~���=71[��xSE�-dQ�����6�Ø�l��j6�v�e�{�p� ^q���RdZv�P�e`q''0L��F��;,���;�:N�r����8�]dJD���ln��#��_�@�
��ǥ�H�T����L�<�s��=�����|�kн���7�t���aƸ]L������آ�?p���.v0_M~BR#�N�~�9W�X[Q{%�%�$����l�)�|�@K>�/���0�Z�!o�ٕ�z~*��΅9/���.���x�BÞ~E��X^j�s#�����0��k�+��m�����������3hh�wD �6O���w�c��.g:�,9h(g�z�(�1b�&�D�)!�'���4���I{4OP�
$�x�bx�.�����f�󼝜}���*,�Iz�S��3�u���A�p���=5z�.[a>�/��� @�3�����I�o&^;	�60�xJU�,y"�9$1��6��&F:ǏOq`X�ƌ�c+�2�K��x�ٙV/�X鐛�;�C��z���(�=��sqa�y���&�#-W��ڗR4�*�loM���8/] Gs�g������`�\�"XN�۩Ą�� u�%v����Ga����oZ4�w ��Q����4�S�)!��ok#��4.�kr���{ʜ3;��v�@�B�O�$���d	��@�@��VuC�hl��v&�`�6-qB�㒧2$]`]�f��#���m;��D�� }�
��o�dŋ�X�����m3ܡs6/��aٽ��1�΀7��Wh[C}�	�SPb�3�V+oEp�2���J=���E��Qg����Ǳ
t�ꭀF�(�2
1�����n��2}*�	��m!���΍͢5L+_��L��"5]:�c���Z �� c [�R�0� ����x���C����H���0�+�M}'�oT�)0@�K�ddYC������2�D�o���J�g��Άb(���ح	¢���a�FA�
��n3��=�Q,ku�����Z wq8�.��U�jXM5b�NI!`t��G#y9\� _?\����7���)��F����
r��EX9C��(%F�a�Xu��hẝ��Jv&}����R	��.�����'�pJ�(�0^�CΈAC,N&8j�H�@M���p�ك�����R�fI�����m�~�?_7C4��̎�����cD���)2��d�i��ah+����4Y}�	3�B�lB�Hj�����Y4��:n��}�IOqif3��%�~�/<v���T� �%/M����,��� �64<l����0�Y�Nx"nR1N�0��`��a�1s¶�j����W6]}a�!��"����f�)Ҵ�$��靹Yt�L�2a������eK���ɌH�t)�U��&�v���r�8�8IV(Ȇ�$��� 3���7os� A��f��N�4Hn����N�Y���4X&)�[�.A�Y���j����Я�j^7)����)w�%��t�.�y-;$-�K�j5Fȩ��jJFi��H@|1��2D\���c4K!�P�K��فv
9D�d6�ܜ�l
@��&L~�Ơ�d� ��A�x�㘨t�%	��-dȤ~��y�H! B20�w6��x��^��/k��rQ���ź�����J���bj!� �@G2Ŵ@Ԁ�!�/[րQ,�Kuݨ�K�������U"�H\�X�x�_������F׊�%���{����+��HHI.�	%>�J�$zY�;m���5�dG�+�޼���0@� ��y'���L�@Z���M��ZX��� �đ�@Kn�5���.1BK�#����Dd�C�,�~,5J���ܔ؊�^���J��Sh��I�R.��=��9L��h�Q��&)��`s�m�q";���Iؼ$�y{q(e��Q���,>aK�����Ӑ �Y3*���V@P�N�d,�A��aC��oѺD�i���Ł޴�%�a�R.�.�N�:��L���h�p�yY���aE�2a���&}��Ac���D�g^�rV���J�X�rd>%I�� ��-�{����y��ā?N�������@]�	b���j��̰��vEv����Ϟ&���'EYZaA���D�"
��n�~.�����PDnn֦�"գtIT�.UUUWZ2A��1Hs�b����+A�h恰����2*����6,9;-n���)�$St6U�v�Ye6�C�V�1� $m$���e���+7D�,�vh��ڀ��8�-�.�cs�[�i��̹�w�˼Egς=��h�-IR�`\�H]����J ���F$������������x���vd�2C��#驾��{`�8�
���� ���≰��N���M<`��0����p�%�(�&P`�D"��E�8�	�-���ҊD����a�X��<qZ���V�  _��T�G�eS���SH�<�l����Mw���v��P��A��0�r�3	�ϼ�m3Lm�Ma�J@��Q7�xa�i%�AY����$�[տ�e̴��h���Tu�b}r�h�hƳ�<�.�V�fR�!�v�g+��3ǯ��mL&��n������A���X��6B�s�C\$��K[R��7�����ۦa�V:'>]��+a�ب6	�R:���2�����U&$��4���m�@%5�ۆ"aO��6��1�*c��'�A+��M�-�h��+����[f�%�e�h��1.$ʛ-5��l�fzM=z+/EU��{�b�س@�aB�a�r�6�������k��;(6i$�ԁ{�9ތ���Xʔ�ִ��k-�a�21%���D�A
aBG�� �b�:@-�����B�\I�4��h�ǅ����|B�+al(	a��$��M�$B2b���.�1�/����+�2��$E�Ȱ��J�%��vgEҸ<�� ��/E=�!Q,Æ:�([�w���lh`��!Z_��:9�0#	��D3��)�ޠjB��.E�����/��D�V�8��h���B�5p`Q"��b���ϱ���|��PFIeQ&t�8N\�E��*G�(I�@�i �
� �:K{ce����Ϩ8څ#��`Q�W�4���/��,�`@��0�`7�3��S@4���9̞-��ye�q��@lA��l�����Jכ=�Y���td��l�t�S��h�n!�L�"zIH��h	�u�Q���A(�O�4�-qˊX�4��2do*�����A�2�	�0��y��K�K��h��1�^r�G�X��@�_��|�e�	���5x��ƍ��y�_6 ma'D���:\�b`�)*�[0�<��LL
Ľ�A��b[5dD�ff\��3 y�\���o�ڠ�W�#iS<vׂ�W�X�ҡ��z9�����z��lG�oޑŅ�d��-���q���я��WR��E�h:|�M7�Q�M���j*I ���Ûtx�����H@��\�* l,����3�ğ7����>>��S	!�R���)��4j�|/�ݡ��1���59JpK
(UT%U2�ybY~�b��4��\W�vIp<Q&��Z�*b�t�� C�(i���1G'�lZoBj��Dh)pb��N9��/>=��ꁰl�[��C1+�CI���}%�d�)7�]���yS��?X�źD|�`����&%�cf�Q-Z��"m8�D�7l��J�Bϧj=�l}�oހr��h{�5;��OLx��-M�������mE����)&{PE 4�U����x�(��C(��阌{�w�T����-*�
k�U7���#����-n�JчB�TA;���hP����-��j�t�,�{)_����m6��	��qE8��%�� (c0%ݚ\�ī�B� ��3| �;[-0�X!�E�7�� �4����%ْ��:X�iT���@�eO8�	���8��v��*�V���-���DU���#���cK�4��I�B" J�����41n�<BW%�'��j}�fi��Ɨ�v�=�ta�_D>xi8�[��g�<b�X�bB7bn�u��I2�n�h�
%�`��r�x̃��9Iu ���H`;}�,^Øꁦ��o�ycE":4T���>q��EH���
�2��3�� �� ?W��b/g���hJ�JA#c��#\�o�Ҋ:&�|�X\����
⓶��#��K���@��2hF#\�'nI�Bd�'a2.P�a^��5��B����D=�zY�Ft;�Z�4��l�7�����m Bm�H�T�a��1x �h.��: ∄q+��W��pY���*�T�J��I1���N�S�b��`FFJ���/[��P�v)S�.�!;�M�{
���R�_>��Ş �_``���ᘒz��"�D�Q��8�Aq��`#Qс	���(=g�A��Н���r hG"���i�腯K�ܞu���*ЄjFH���!"I�A�o������H�W�w�ϙ}�� ��0h�C.<x�kECQ�.��f��(v�i��%�f�z�#>��Ԯ	r�x��ky3`�0�H5�oF9b7Q�l[H3��'kH��9�lvF㬐�"�AHu*�F�D�^���3i��A�G��'!��׃�V�;�;_��~��[��]����1�dQ�K�0��T)�V��Υ�8q������*��>%
	|��I��d5���k�ӿ�@� �f�7*4�"fi�m�ݖ��F+M�U�-��B+k��jajjM�q� �R��颞�)���f�:̇l������kB��=��~O�"z)2v��ns�vXb\��=XuU8�N�!9v��_�Ų���ˆ6������ԵQ@�vo��2QNh`H	�7�:�-�m6߂��4r�7Ld�@J"�%�%/w������|�p)7'��� �z Bb"����y��p	���/IIY�����"A�!``�%6A70�Ү�U7�)�xJ9�ќG��V�MA,}ؠ�X�z_��ܐ �0�T���>j����<=��~���R��U������l��
G���d��~X�^���B���[��I�Ώ5K�?c������!�D�@����A��H|�?�?"��;�����ؘs��^$_?�Y�����겱T��V�������]�Ǖp'��Q�08��?��%�PE(X� B�Xe7��rE8P�4\�