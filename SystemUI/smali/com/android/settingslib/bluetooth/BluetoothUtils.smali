.class public Lcom/android/settingslib/bluetooth/BluetoothUtils;
.super Ljava/lang/Object;
.source "BluetoothUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;
    }
.end annotation


# static fields
.field public static final D:Z = true

.field public static final META_INT_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothUtils"

.field public static final V:Z = false

.field private static sErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildBtRainbowDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    sget v1, Lcom/android/settingslib/R$array;->bt_icon_fg_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 186
    sget v2, Lcom/android/settingslib/R$array;->bt_icon_bg_colors:I

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
    new-instance v1, Lcom/android/settingslib/widget/AdaptiveIcon;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/widget/AdaptiveIcon;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 192
    move-object p0, v1

    check-cast p0, Lcom/android/settingslib/widget/AdaptiveIcon;

    aget p1, v0, p2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/AdaptiveIcon;->setBackgroundColor(I)V

    return-object v1
.end method

.method public static getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 128
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z
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

.method public static getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 69
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-eq v1, v2, :cond_2

    const/16 v2, 0x500

    if-eq v1, v2, :cond_1

    const/16 v2, 0x600

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Landroid/util/Pair;

    const-string v0, "ic_settings_print"

    .line 89
    invoke-static {p0, v0}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 88
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_imaging:I

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 82
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 83
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/content/Context;Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_input_peripheral:I

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 76
    :cond_2
    new-instance p1, Landroid/util/Pair;

    const-string v0, "ic_phone"

    .line 78
    invoke-static {p0, v0}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 77
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_phone:I

    .line 79
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 71
    :cond_3
    new-instance p1, Landroid/util/Pair;

    const-string v0, "ic_bt_laptop"

    .line 72
    invoke-static {p0, v0}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 71
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_computer:I

    .line 73
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 97
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 99
    invoke-interface {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    if-eqz v0, :cond_8

    const/4 p1, 0x0

    .line 105
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 106
    new-instance p1, Landroid/util/Pair;

    const-string v0, "ic_bt_headset_hfp"

    .line 108
    invoke-static {p0, v0}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 107
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_headset:I

    .line 109
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 111
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 112
    new-instance p1, Landroid/util/Pair;

    const-string v0, "ic_bt_headphones_a2dp"

    .line 114
    invoke-static {p0, v0}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 113
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_headphone:I

    .line 115
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 118
    :cond_8
    new-instance p1, Landroid/util/Pair;

    const-string v0, "ic_settings_bluetooth"

    .line 120
    invoke-static {p0, v0}, Lcom/android/settingslib/internal/resource/InternalResourceLoad;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 119
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBluetoothDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->bluetooth_talkback_bluetooth:I

    .line 121
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static getBtRainbowDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BluetoothUtils"

    .line 136
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    const/4 v3, 0x6

    .line 139
    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v3

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$dimen;->bt_nearby_icon_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    .line 147
    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getUriMetaData(Landroid/bluetooth/BluetoothDevice;I)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to take persistable permission for: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 157
    invoke-static {v3, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    .line 160
    invoke-static {v3, v4, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 162
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    new-instance v3, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;

    invoke-direct {v3, v5, v4}, Lcom/android/settingslib/widget/AdaptiveOutlineDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 165
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_1
    move-exception v3

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get drawable for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 173
    invoke-static {p0, v2, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->buildBtRainbowDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_0
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnecting:I

    return p0

    .line 39
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connected:I

    return p0

    .line 41
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_connecting:I

    return p0

    .line 43
    :cond_3
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_disconnected:I

    return p0
.end method

.method public static getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I
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

.method public static getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
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

.method public static getUriMetaData(Landroid/bluetooth/BluetoothDevice;I)Landroid/net/Uri;
    .locals 0

    .line 263
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 267
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static setErrorListener(Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;)V
    .locals 0

    .line 58
    sput-object p0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->sErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 52
    sget-object v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->sErrorListener:Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils$ErrorListener;->onShowError(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
