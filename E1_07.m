% Definir la URL de la imagen
url = 'https://www.baenegocios.com/__export/1654167949215/sites/cronica/img/2022/06/02/riquelme.jpg_966076397.jpg';

% Leer la imagen desde la URL utilizando webread
im = webread(url);




% Aplicar el filtro a la imagen
filtro = fspecial('sobel');
im_filtrada = imfilter(im,filtro);

% Calcular la respuesta en frecuencia del filtro
[h,f] = freqz2(filtro,size(im,1),size(im,2));
figure ('Name','Sobel Filter','NumberTitle','off');


% Visualizar la imagen original, la imagen filtrada y la respuesta en frecuencia del filtro
subplot(1,3,1), imshow(im), title('Imagen original');
subplot(1,3,2), imshow(im_filtrada), title('Imagen filtrada');
subplot(1,3,3), plot(f,abs(h)), title('Respuesta en frecuencia del filtro');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filtro2 = fspecial('prewitt');
im_filtrada2 = imfilter(im,filtro2);

% Calcular la respuesta en frecuencia del filtro
[h2,f2] = freqz2(filtro2,size(im,1),size(im,2));

figure ('Name','prewitt Filter','NumberTitle','off');
% Visualizar la imagen original, la imagen filtrada y la respuesta en frecuencia del filtro
subplot(1,3,1), imshow(im), title('Imagen original');
subplot(1,3,2), imshow(im_filtrada), title('Imagen filtrada');
subplot(1,3,3), plot(f2,abs(h2)), title('Respuesta en frecuencia del filtro');

%%%%%%%%%%%%%%%%%%%%%%%
filtro3 = fspecial('gaussian');
im_filtrada3 = imfilter(im,filtro3);

% Calcular la respuesta en frecuencia del filtro
[h3,f3] = freqz2(filtro3,size(im,1),size(im,2));

figure ('Name','gaussian','NumberTitle','off');
% Visualizar la imagen original, la imagen filtrada y la respuesta en frecuencia del filtro
subplot(1,3,1), imshow(im), title('Imagen original');
subplot(1,3,2), imshow(im_filtrada), title('Imagen filtrada');
subplot(1,3,3), plot(f3,abs(h3)), title('Respuesta en frecuencia del filtro');



