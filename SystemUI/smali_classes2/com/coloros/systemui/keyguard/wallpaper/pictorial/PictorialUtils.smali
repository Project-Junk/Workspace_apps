.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;
.super Ljava/lang/Object;
.source "PictorialUtils.java"


# static fields
.field public static final ACTION_MORE:Ljava/lang/String; = "more"

.field private static final ACTION_SEE_PICTORIAL_DETAILS:Ljava/lang/String; = "com.heytap.pictorial.intent.action.SEE_PICTORIAL_DETAILS"

.field public static final APK:I = 0x2

.field public static final BROWSER_ANTI_SHIELDING_KEY:Ljava/lang/String; = "I&hYT^Ec"

.field private static final BROWSER_EXTRA_PRIVATE_DATA:Ljava/lang/String; = "privateData"

.field private static final BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.android.browser"

.field private static final BROWSER_PACKAGE_NAME_NEW:Ljava/lang/String; = "com.heytap.browser"

.field private static final BROWSER_PRIVATE_DATA_HEAD:Ljava/lang/String; = "ColorOS"

.field private static final CHROME_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field public static final CLICK_TYPE:Ljava/lang/String; = "type"

.field public static final DEFAULT_BUTTON_COLOR:Ljava/lang/String; = "#ffffffff"

.field public static final DEFAULT_BUTTON_SIZE:I = 0xa

.field public static final DEFAULT_COLOR:Ljava/lang/String; = "#e6ffffff"

.field public static final DEFAULT_TITLE_SIZE:I = 0xe

.field public static final EXPOSURE_END_JUMP:I = 0x4

.field public static final EXPOSURE_END_KEYGUARD_DONE:I = 0x5

.field public static final EXPOSURE_END_SCREEN_OFF:I = 0x6

.field public static final EXPOSURE_END_SLIDE:I = 0x1

.field private static final FILE_URI:Ljava/lang/String; = "fileUri"

.field public static final FINGERPRINT_UNLOCK:I = 0x2

.field private static final HALF:F = 0.5f

.field private static final IMAGE_ID:Ljava/lang/String; = "imageId"

.field public static final INVALID:I = -0x1

.field public static final LIGHT_SCREEN_STATE:I = 0x1

.field public static final LINK_TYPE_FOR_DEEPLINK:I = 0x3

.field public static final LINK_TYPE_FOR_QUICK_APP:I = 0x2

.field public static final LINK_TYPE_FOR_WEBVIEW:I = 0x1

.field public static final LINK_TYPE_INVALID:I = -0x1

.field public static final LOCAL:I = 0x1

.field private static final MAX_LOWER:I = 0x5a

.field private static final MAX_UPPER:I = 0x7a

.field private static final MIN_LOWER:I = 0x41

.field private static final MIN_UPPER:I = 0x61

.field public static final PICTORIAL:I = 0x0

.field public static final SLIDE_SCREEN_STATE:I = 0x2

.field public static final SLIDING_TYPE_R_TO_L:I = 0x1

.field public static final SLIDING_UNLOCK:I = 0x1

.field public static final STATUS_FAILED:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PictorialUtils"

.field private static final WEB_URL:Ljava/lang/String; = "webUrl"

.field private static sStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 7

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 265
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 270
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static checkPictorialDetailsIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8

    const-string v0, "Keyguard"

    const/4 v1, 0x0

    const-string v2, "PictorialUtils"

    if-nez p0, :cond_0

    const-string p0, "checkPictorialDetailsIntent context is null, return!"

    .line 196
    invoke-static {v0, v2, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "checkPictorialDetailsIntent intent is null, return!"

    .line 200
    invoke-static {v0, v2, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const-string v6, "android.intent.category.BROWSABLE"

    const/high16 v7, 0x10000

    if-eqz v3, :cond_5

    .line 206
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "com.heytap.pictorial.intent.action.SEE_PICTORIAL_DETAILS"

    .line 207
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 210
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColorOS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I&hYT^Ec"

    .line 212
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "privateData"

    .line 213
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->getBrowserPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    return v5

    .line 218
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string p0, "checkPictorialDetailsIntent. The data is null!"

    .line 221
    invoke-static {v2, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 225
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 226
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 232
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v5

    return p0
.end method

.method public static checkQuickOapsValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 114
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->checkOapsUriValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 0

    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->encryptBytes([B[B)[B

    move-result-object p0

    .line 240
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static encryptBytes([B[B)[B
    .locals 2

    const-string v0, "DES"

    .line 245
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 246
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 247
    invoke-virtual {p1, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 249
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 251
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static fitPictorialDetailsIntent(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getInstantAppLink()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->checkQuickOapsValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "type"

    if-eqz v0, :cond_1

    .line 312
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x2

    .line 313
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "PictorialUtils"

    const-string v1, "-- open by quick app"

    .line 314
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setClickDetailIntent(Landroid/content/Intent;)V

    return-void

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 322
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 323
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 324
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    invoke-static {p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->checkPictorialDetailsIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setClickDetailIntent(Landroid/content/Intent;)V

    return-void

    .line 332
    :cond_2
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 334
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "webUrl"

    .line 336
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "imageId"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 338
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 340
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileUri"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    :cond_3
    invoke-static {p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->checkPictorialDetailsIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 343
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setClickDetailIntent(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public static getBrowserPackageName()Ljava/lang/String;
    .locals 4

    const-string v0, "persist.sys.oppo.region"

    const-string v1, "CN"

    .line 168
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " "

    const-string v1, "ro.oppo.operator"

    .line 169
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TELSTRA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VODAFONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "com.android.chrome"

    return-object v0

    :cond_1
    const-string v0, "com.heytap.browser"

    return-object v0
.end method

.method public static getCurrentTopComponentName()Ljava/lang/String;
    .locals 2

    .line 399
    new-instance v0, Landroid/app/OppoActivityManager;

    invoke-direct {v0}, Landroid/app/OppoActivityManager;-><init>()V

    const/4 v1, 0x0

    .line 402
    :try_start_0
    invoke-virtual {v0}, Landroid/app/OppoActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 404
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getPictorialResource(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 5

    const-string v0, "com.heytap.pictorial"

    .line 152
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 156
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 157
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenWidth()I

    move-result v4

    iput v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenHeight()I

    move-result p0

    iput p0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 159
    iget p0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p0, v3, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 160
    iget p0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p0, v3, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 161
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static isAdImage(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupType()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupType()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isChineseChar(C)Z
    .locals 1

    .line 395
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\u4e00-\u9fa5]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDynamicImage(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isENChar(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isImageCanRead(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/FileUtils;->canRead(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    .line 143
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getDrawableID(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_2

    move v0, v1

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static isPictorialInstalled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.heytap.pictorial"

    .line 118
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSameImage(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 361
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static isSameWallpaperInfo(Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->mType:I

    iget v2, p1, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->mType:I

    if-eq v1, v2, :cond_1

    return v0

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isPictorialType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/KeyguardWallpaperInfo;->isPictorialType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    check-cast p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    check-cast p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->isSameImage(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static openQuickApp(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getInstantAppLink()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 420
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->getInstance()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter;->startInstantOaps(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/QuickAppRouter$QuickAppOpenCallback;)V

    return-void
.end method

.method public static printWallInfo(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 283
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->sStringBuilder:Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    .line 284
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->sStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 288
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->sStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string p1, " = ( "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "imageID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", groupID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", title = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", content = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", type = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", webUrl = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWebUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", deepLink = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", instantAppLink = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getInstantAppLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", clickText = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getClickText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", uri = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->sStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictorialUtils"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static seePictorialDetails(Landroid/content/Context;Landroid/content/Intent;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.pictorial.intent.action.SEE_PICTORIAL_DETAILS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 183
    :try_start_0
    invoke-static {p0, p2, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 184
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "seePictorialDetails. Fail to start pictorial details activity! intent = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Keyguard"

    const-string p2, "PictorialUtils"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 190
    invoke-interface {p2, p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    :cond_2
    :goto_0
    return-void
.end method
