.class public final Lcom/android/settingslib/d/f;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/d/f$a;
    }
.end annotation


# static fields
.field public static a:Lcom/android/settingslib/d/f$a;


# direct methods
.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    sget v1, Lcom/android/settingslib/e$a;->bt_icon_fg_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 186
    sget v2, Lcom/android/settingslib/e$a;->bt_icon_bg_colors:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 189
    array-length v2, v0

    rem-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 190
    aget v1, v1, p2

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 191
    new-instance v1, Lcom/android/settingslib/widget/a;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/widget/a;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 192
    move-object p0, v1

    check-cast p0, Lcom/android/settingslib/widget/a;

    aget p1, v0, p2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/a;->a(I)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/android/settingslib/d/g;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/d/g;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothUtils"

    .line 1721
    iget-object v1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 1069
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v5

    const/16 v6, 0x100

    if-eq v5, v6, :cond_3

    const/16 v6, 0x200

    if-eq v5, v6, :cond_2

    const/16 v6, 0x500

    if-eq v5, v6, :cond_1

    const/16 v6, 0x600

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    new-instance v1, Landroid/util/Pair;

    const-string v5, "ic_settings_print"

    .line 1089
    invoke-static {p0, v5}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 5128
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1088
    sget v6, Lcom/android/settingslib/e$h;->bluetooth_talkback_imaging:I

    .line 1090
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1082
    :cond_1
    new-instance v5, Landroid/util/Pair;

    .line 1083
    invoke-static {p0, v1}, Lcom/android/settingslib/d/o;->a(Landroid/content/Context;Landroid/bluetooth/BluetoothClass;)I

    move-result v1

    .line 4128
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1083
    sget v6, Lcom/android/settingslib/e$h;->bluetooth_talkback_input_peripheral:I

    .line 1084
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v5

    goto/16 :goto_1

    .line 1076
    :cond_2
    new-instance v1, Landroid/util/Pair;

    const-string v5, "ic_phone"

    .line 1078
    invoke-static {p0, v5}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 3128
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1077
    sget v6, Lcom/android/settingslib/e$h;->bluetooth_talkback_phone:I

    .line 1079
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1071
    :cond_3
    new-instance v1, Landroid/util/Pair;

    const-string v5, "ic_bt_laptop"

    .line 1072
    invoke-static {p0, v5}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 2128
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1071
    sget v6, Lcom/android/settingslib/e$h;->bluetooth_talkback_computer:I

    .line 1073
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5725
    :cond_4
    :goto_0
    iget-object v5, p1, Lcom/android/settingslib/d/g;->e:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1098
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/d/r;

    .line 1099
    invoke-interface {v6, v1}, Lcom/android/settingslib/d/r;->a(Landroid/bluetooth/BluetoothClass;)I

    move-result v6

    if-eqz v6, :cond_5

    .line 1101
    new-instance v1, Landroid/util/Pair;

    .line 6128
    invoke-virtual {p0, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1101
    invoke-direct {v1, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_8

    .line 1105
    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1106
    new-instance v1, Landroid/util/Pair;

    const-string v5, "ic_bt_headset_hfp"

    .line 1108
    invoke-static {p0, v5}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 7128
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1107
    sget v6, Lcom/android/settingslib/e$h;->bluetooth_talkback_headset:I

    .line 1109
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1111
    :cond_7
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1112
    new-instance v1, Landroid/util/Pair;

    const-string v5, "ic_bt_headphones_a2dp"

    .line 1114
    invoke-static {p0, v5}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 8128
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1113
    sget v6, Lcom/android/settingslib/e$h;->bluetooth_talkback_headphone:I

    .line 1115
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1118
    :cond_8
    new-instance v1, Landroid/util/Pair;

    const-string v5, "ic_settings_bluetooth"

    .line 1120
    invoke-static {p0, v5}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 9128
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1119
    sget v6, Lcom/android/settingslib/e$h;->bluetooth_talkback_bluetooth:I

    .line 1121
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9396
    :goto_1
    iget-object v5, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v6, 0x6

    .line 139
    invoke-static {v5, v6}, Lcom/android/settingslib/d/f;->a(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settingslib/e$d;->bt_nearby_icon_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v6, :cond_a

    const/4 v6, 0x5

    .line 10263
    invoke-static {v5, v6}, Lcom/android/settingslib/d/f;->b(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    goto :goto_2

    .line 10267
    :cond_9
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_a

    .line 151
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 154
    :catch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Failed to take persistable permission for: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 157
    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 160
    invoke-static {v2, v7, v7, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 162
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    new-instance v2, Lcom/android/settingslib/widget/b;

    invoke-direct {v2, v8, v4}, Lcom/android/settingslib/widget/b;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 165
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_1
    move-exception v2

    .line 168
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to get drawable for: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :cond_a
    new-instance v0, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 10405
    iget-object p1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 173
    invoke-static {p0, v2, p1}, Lcom/android/settingslib/d/f;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 208
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static c(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 249
    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method
