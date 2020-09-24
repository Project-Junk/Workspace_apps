.class public final Lcom/coloros/systemui/keyguard/util/KeyguardUtils;
.super Ljava/lang/Object;
.source "KeyguardUtils.java"


# static fields
.field private static final BRIGHT_WALLPAPER_BRIGHTNESS:I = 0xc4

.field public static final CAMERA_INTENT_OPPO:Ljava/lang/String; = "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.oppo.camera/.Camera;end"

.field public static final DAIL_INTENT:Ljava/lang/String; = "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.contacts/.activities.DialtactsActivity;end"

.field public static final DAIL_INTENT_MR2:Ljava/lang/String; = "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.contacts/.DialtactsActivityAlias;end"

.field private static final DEFALUT_LONG_VIBRATION_DURING_TIME:J = 0x12cL

.field private static final DEFALUT_SHORT_VIBRATION_DURING_TIME:J = 0x32L

.field private static final DEFAULT_DISPLAY_DENSITY_DPI:I = 0x1e0

.field private static final DEFAULT_OPPO_UNLOCK_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field public static final DEFAULT_OPPO_UNLOCK_PKG:Ljava/lang/String; = "com.android.systemui"

.field public static final DEFAULT_OPPO_UNLOCK_PKG_KEYGUARD:Ljava/lang/String; = "com.android.keyguard"

.field public static final DOUBLE_LAYER_KEYGUARD_ACTION:Ljava/lang/String; = "com.color.intent.action.keyguard"

.field private static final DP_VALUE_OFFSET:F = 0.5f

.field private static final DURATION_FOR_STATUSBAR_RESHOW:J = 0x3e8L

.field private static final EQUAL_THRESHOLD:F = 1.0E-6f

.field public static final FLAG_ACTIVITY_KEEP_RESUME_WHEN_SLEEPING:I = 0x800

.field private static final JELLY_BEAN_MR1:I = 0x11

.field public static final KEYGUARD_MODE_DEFAULT:I = 0x0

.field public static final KEYGUARD_MODE_PICTORIAL:I = 0x1

.field public static final KEYGUARD_MODE_THEME:I = 0x2

.field private static final KEYGUARD_SP_FILE_NAME:Ljava/lang/String; = "keyguard_sp"

.field public static final MESSAGE_INTENT:Ljava/lang/String; = "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.mms/.ui.ConversationList;end"

.field public static final MUSIC_PLAYER_INTENT:Ljava/lang/String; = "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.oppo.music/.MainListActivity;end"

.field public static final OPPO_UNLOCK_CHANGE_CLASS:Ljava/lang/String; = "oppo_unlock_change_class"

.field public static final OPPO_UNLOCK_CHANGE_PKG:Ljava/lang/String; = "oppo_unlock_change_pkg"

.field private static final SCRIM_MATRIX:[F

.field public static final SETTING_KEYGUARD_MODE:Ljava/lang/String; = "oppo_keyguard_current_mode"

.field public static final SETTING_KEYGUARD_PICTORIAL_URI:Ljava/lang/String; = "oppo_keyguard_current_pictorial_uri"

.field public static final START_CAMERA_KEYCODE:I = 0x121

.field private static final SYSTEM_CRYPTO_TYPE:Ljava/lang/String; = "ro.crypto.type"

.field private static final SYSTEM_CRYPTO_TYPE_DEFAULT:Ljava/lang/String; = "block"

.field private static final SYSTEM_CRYPTO_TYPE_FILE:Ljava/lang/String; = "file"

.field private static final TAG:Ljava/lang/String; = "KeyguardUtils"

.field private static final TALK_TO_SF_CODE_21003:I = 0x520b

.field private static final VIBRATE_PATTERN_WHEN_VERIFY_FAIL:[J

.field private static sCryptoType:Ljava/lang/String;

.field private static sFbeModeState:Ljava/lang/String;

.field private static sInitialDisplayDensity:I

.field private static volatile sKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

.field private static sLinearmotorVibrator:Lcom/oppo/os/LinearmotorVibrator;

.field private static sReshowTask:Ljava/lang/Runnable;

.field private static sScreenHeight:I

.field private static sScreenWidth:I

.field private static sSecureState:Ljava/lang/String;

.field private static sShowTask:Ljava/lang/Runnable;

.field private static volatile sStatusBarShow:Z

.field private static sSurfaceFlinger:Landroid/os/IBinder;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayWidth:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 125
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->VIBRATE_PATTERN_WHEN_VERIFY_FAIL:[J

    const/16 v0, 0x14

    .line 133
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->SCRIM_MATRIX:[F

    .line 152
    new-instance v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils$1;

    invoke-direct {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils$1;-><init>()V

    sput-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sShowTask:Ljava/lang/Runnable;

    .line 166
    new-instance v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils$2;

    invoke-direct {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils$2;-><init>()V

    sput-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sReshowTask:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 8
        0x0
        0x32
        0x4b
        0x32
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x3e380000    # -25.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x3e380000    # -25.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x3e380000    # -25.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mDisplayWidth:I

    .line 178
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    .line 179
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    const-string v0, "window"

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 181
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRealSize is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardUtils"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget p1, p0, Landroid/graphics/Point;->x:I

    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sput p1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sScreenWidth:I

    .line 185
    iget p1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sScreenHeight:I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sStatusBarShow:Z

    return v0
.end method

.method public static addScrim(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 725
    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrix;

    sget-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->SCRIM_MATRIX:[F

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 727
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 728
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 729
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 730
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 731
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x0

    .line 732
    invoke-virtual {v2, p0, v0, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p1, :cond_1

    .line 735
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 736
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v1
.end method

.method public static byteArrayToInt([B)I
    .locals 6

    const/4 v0, 0x0

    .line 435
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 436
    :try_start_1
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 437
    :try_start_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 442
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v5, v1

    move-object v1, v0

    :goto_0
    move-object v0, v5

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v5, v1

    move-object v1, v0

    :goto_1
    move-object v0, v5

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_3
    const-string v2, "KeyguardUtils"

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteArrayToInt e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 441
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 442
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    const/4 v0, -0x1

    :goto_3
    return v0

    :catchall_3
    move-exception p0

    .line 441
    :goto_4
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 442
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 443
    throw p0
.end method

.method private static calculateWallpaperColor(Landroid/graphics/Bitmap;)I
    .locals 4

    const-string v0, "KeyguardUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "calculateWallpaperColor bitmap is null"

    .line 754
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 757
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 758
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 759
    invoke-static {p0, v1, v1, v2, v3}, Lcom/coloros/wallpapersetter/ImageProcess;->getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I

    move-result p0

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaper brightness value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static captureBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_0

    .line 247
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 248
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static closeStreamSafely(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 452
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close stream error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static createColorKeyguardIntent(I)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x1

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p0, "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.oppo.music/.MainListActivity;end"

    .line 364
    invoke-static {p0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 365
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string p0, "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.oppo.camera/.Camera;end"

    .line 359
    invoke-static {p0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 360
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 p0, 0x800

    .line 361
    invoke-virtual {v3, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p0, "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.mms/.ui.ConversationList;end"

    .line 355
    invoke-static {p0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 356
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 346
    :cond_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-le p0, v0, :cond_4

    const-string p0, "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.contacts/.DialtactsActivityAlias;end"

    goto :goto_0

    :cond_4
    const-string p0, "intent:#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.contacts/.activities.DialtactsActivity;end"

    .line 351
    :goto_0
    invoke-static {p0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 352
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 372
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v3
.end method

.method private defaultLongVibrate()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    .line 564
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x12c
    .end array-data
.end method

.method private defaultShortVibrate()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    .line 571
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x32
    .end array-data
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;
    .locals 2

    .line 189
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    if-nez v0, :cond_1

    .line 190
    const-class v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    monitor-enter v0

    .line 191
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    .line 194
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 196
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    return-object p0
.end method

.method private static declared-synchronized getLinearmotorVibrator(Landroid/content/Context;)Lcom/oppo/os/LinearmotorVibrator;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-class v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    monitor-enter v0

    .line 576
    :try_start_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isWaveformVibratorSupport()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "KeyguardUtils"

    const-string v1, "FEATURE_WAVEFORM_VIBRATOR_SUPPORT == false, return"

    .line 577
    invoke-static {p0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 578
    monitor-exit v0

    return-object p0

    .line 581
    :cond_0
    :try_start_1
    sget-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sLinearmotorVibrator:Lcom/oppo/os/LinearmotorVibrator;

    if-nez v1, :cond_1

    const-string v1, "linearmotor"

    .line 582
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oppo/os/LinearmotorVibrator;

    sput-object p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sLinearmotorVibrator:Lcom/oppo/os/LinearmotorVibrator;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "KeyguardUtils"

    .line 587
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLinearmotorVibrator exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "KeyguardUtils"

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLinearmotorVibrator error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sLinearmotorVibrator:Lcom/oppo/os/LinearmotorVibrator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLongFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2

    const-string v0, "keyguard_sp"

    const/4 v1, 0x0

    .line 666
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 667
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRemoteContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x3

    .line 257
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 259
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSansMediumFont()Landroid/graphics/Typeface;
    .locals 2

    :try_start_0
    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    .line 638
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public static getTopPackageTaskInfo(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "activity"

    .line 317
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 318
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 319
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 320
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 383
    new-array p0, v0, [B

    return-object p0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    .line 386
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUTF8Bytes UnsupportedEncodingException ue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 396
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 397
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    :try_start_3
    invoke-virtual {v3, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 400
    array-length v1, p0

    const/4 v4, 0x2

    sub-int/2addr v1, v4

    new-array v1, v1, [B

    .line 401
    array-length v5, v1

    invoke-static {p0, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    invoke-static {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 406
    invoke-static {v3}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    move-object p0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-object v3, v1

    :catch_2
    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    goto :goto_2

    :catch_3
    move-object v3, v1

    .line 403
    :goto_0
    :try_start_4
    new-array p0, v0, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 405
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 406
    invoke-static {v3}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    :goto_1
    return-object p0

    :catchall_3
    move-exception p0

    move-object v2, v1

    .line 405
    :goto_2
    invoke-static {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 406
    invoke-static {v3}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 407
    throw p0
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 297
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 302
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public static intToByteArray(I)[B
    .locals 6

    const/4 v0, 0x0

    .line 417
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 418
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 420
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 424
    :goto_0
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 425
    invoke-static {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_1
    :try_start_3
    const-string v3, "KeyguardUtils"

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intToByteArray e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :goto_2
    return-object v0

    :catchall_2
    move-exception p0

    .line 424
    :goto_3
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 425
    invoke-static {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->closeStreamSafely(Ljava/io/Closeable;)V

    .line 426
    throw p0
.end method

.method public static isArrayEmpty([B)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 378
    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDefaultKeyguardInSettings(Landroid/content/Context;)Z
    .locals 2

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 283
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "oppo_unlock_change_pkg"

    .line 282
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.systemui"

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.keyguard"

    .line 287
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isFloatEqual(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 337
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLightWallpaper(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 744
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->calculateWallpaperColor(Landroid/graphics/Bitmap;)I

    move-result p0

    const/16 v0, 0xc4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 459
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 460
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 461
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isSystemFbeMode(Landroid/content/Context;)Z
    .locals 3

    .line 609
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->isSystemReboot()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->isLockDeadState()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->hasDisableFbeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 614
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sCryptoType:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "ro.crypto.type"

    const-string v1, "block"

    .line 615
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sCryptoType:Ljava/lang/String;

    .line 617
    :cond_1
    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sSecureState:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 618
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    .line 619
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sSecureState:Ljava/lang/String;

    .line 621
    :cond_2
    sget-object p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sCryptoType:Ljava/lang/String;

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sSecureState:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    .line 622
    :cond_3
    sget-object p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sFbeModeState:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 623
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sFbeModeState:Ljava/lang/String;

    .line 624
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSystemFbeMode, CryptoType="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sCryptoType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sIsSecure="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sSecureState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isFbeMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardUtils"

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return v2
.end method

.method public static isVirtualNavBar(Landroid/content/Context;)Z
    .locals 1

    .line 714
    invoke-static {p0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavState(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static saveKeyguardPictorialUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "KeyguardUtils"

    const-string p1, "context is null.return."

    .line 647
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 650
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 651
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const-string v2, "oppo_keyguard_current_mode"

    .line 650
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    .line 653
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 654
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    const-string v0, "oppo_keyguard_current_pictorial_uri"

    .line 653
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public static saveLongToSharedPreferences(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "keyguard_sp"

    const/4 v1, 0x0

    .line 659
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 660
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 661
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized setStatusBarShow(Z)V
    .locals 4

    const-class v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    monitor-enter v0

    .line 671
    :try_start_0
    sget-boolean v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sStatusBarShow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    .line 672
    monitor-exit v0

    return-void

    .line 674
    :cond_0
    :try_start_1
    sput-boolean p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sStatusBarShow:Z

    const-string v1, "KeyguardUtils"

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatusBarVisibility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    sget-object v1, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->sWorkHandler:Landroid/os/Handler;

    sget-object v2, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sShowTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 677
    sget-object v1, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->sWorkHandler:Landroid/os/Handler;

    sget-object v2, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sReshowTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 678
    sget-object v1, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->sWorkHandler:Landroid/os/Handler;

    sget-object v2, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sShowTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p0, :cond_1

    .line 680
    sget-object p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->sWorkHandler:Landroid/os/Handler;

    sget-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sReshowTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized talkToSurfaceFlinger(ILandroid/os/Parcel;)V
    .locals 4

    const-class v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    monitor-enter v0

    .line 686
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sSurfaceFlinger:Landroid/os/IBinder;

    if-nez v1, :cond_0

    const-string v1, "SurfaceFlinger"

    .line 687
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sSurfaceFlinger:Landroid/os/IBinder;

    .line 689
    :cond_0
    sget-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 690
    sget-object v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sSurfaceFlinger:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, p1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    const-string v1, "KeyguardUtils"

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "talkToSurfaceFlinger, code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "KeyguardUtils"

    const-string v1, "talkToSurfaceFlinger, sf null"

    .line 693
    invoke-static {p0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "KeyguardUtils"

    const-string v2, "talkToSurfaceFlinger failed"

    .line 696
    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 701
    :goto_1
    monitor-exit v0

    return-void

    .line 699
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 700
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .line 266
    sget v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sInitialDisplayDensity:I

    if-gtz v0, :cond_0

    .line 268
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 269
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    sput v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sInitialDisplayDensity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x1e0

    .line 271
    sput v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sInitialDisplayDensity:I

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDisplay getInitialDisplayDensity, e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUtils"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 276
    sget v1, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sInitialDisplayDensity:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 277
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private vibrateByLinearMotor(Landroid/os/VibrationEffect;)V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    if-eqz p1, :cond_1

    .line 550
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_1
    return-void
.end method

.method private vibrateRapidMidByLinearMotor()V
    .locals 3

    .line 540
    sget-object v0, Lcom/color/compat/os/VibratorNative;->RAPID_MIDDLE_WAVEFORM_TIME:[J

    sget-object v1, Lcom/color/compat/os/VibratorNative;->RAPID_MIDDLE_WAVEFORM_AMPLITUDE:[I

    const/4 v2, -0x1

    .line 541
    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 542
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateByLinearMotor(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private vibrateWeakByLinearMotor()V
    .locals 3

    .line 555
    sget-wide v0, Lcom/color/compat/os/VibratorNative;->RAPID_WEAK_ONESHOT_TIME:J

    sget v2, Lcom/color/compat/os/VibratorNative;->WEAK_AMPLITUDE:I

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 557
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateByLinearMotor(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private vibrateWhenVerifyFail()V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    .line 498
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mVibrator:Landroid/os/Vibrator;

    sget-object v0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->VIBRATE_PATTERN_WHEN_VERIFY_FAIL:[J

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method private waveformLongVibrate()V
    .locals 2

    .line 515
    :try_start_0
    new-instance v0, Lcom/oppo/os/WaveformEffect$Builder;

    invoke-direct {v0}, Lcom/oppo/os/WaveformEffect$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/os/WaveformEffect$Builder;->build()Lcom/oppo/os/WaveformEffect;

    move-result-object v0

    .line 516
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->waveformVibrate(Lcom/oppo/os/WaveformEffect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 518
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private waveformShortVibrate()V
    .locals 2

    .line 531
    :try_start_0
    new-instance v0, Lcom/oppo/os/WaveformEffect$Builder;

    invoke-direct {v0}, Lcom/oppo/os/WaveformEffect$Builder;-><init>()V

    const/16 v1, 0x44

    .line 532
    invoke-virtual {v0, v1}, Lcom/oppo/os/WaveformEffect$Builder;->setEffectType(I)Lcom/oppo/os/WaveformEffect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/os/WaveformEffect$Builder;->build()Lcom/oppo/os/WaveformEffect;

    move-result-object v0

    .line 533
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->waveformVibrate(Lcom/oppo/os/WaveformEffect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 535
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private waveformVibrate(Lcom/oppo/os/WaveformEffect;)V
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getLinearmotorVibrator(Landroid/content/Context;)Lcom/oppo/os/LinearmotorVibrator;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 525
    invoke-virtual {p0, p1}, Lcom/oppo/os/LinearmotorVibrator;->vibrate(Lcom/oppo/os/WaveformEffect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseDisplayWidthSize()I
    .locals 4

    .line 208
    iget v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mDisplayWidth:I

    if-gtz v0, :cond_0

    .line 209
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 211
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 212
    invoke-interface {v2, v1, v0}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeyguardUtils"

    const-string v3, "getBaseDisplayWidthSize: "

    .line 214
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    :goto_0
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mDisplayWidth:I

    .line 218
    :cond_0
    iget p0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mDisplayWidth:I

    return p0
.end method

.method public getRealScreenHeight()I
    .locals 0

    .line 204
    sget p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sScreenHeight:I

    return p0
.end method

.method public getRealScreenWidth()I
    .locals 0

    .line 200
    sget p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->sScreenWidth:I

    return p0
.end method

.method public getScreenSize()[I
    .locals 3

    .line 706
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 707
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 708
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 p0, 0x2

    .line 709
    new-array p0, p0, [I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x0

    aput v1, p0, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method public isClosedSuperFirewall()Z
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Landroid/content/pm/OppoPackageManager;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/content/pm/OppoPackageManager;-><init>(Landroid/content/Context;)V

    .line 469
    invoke-virtual {v0}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOppoKeyguardVibratingEnabled()Z
    .locals 2

    .line 600
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "haptic_feedback_enabled"

    .line 601
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readDriverNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p0, "bufclose_IOException_e = "

    const-string v0, "KeyguardUtils"

    const/4 v1, 0x0

    .line 225
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v2, v1

    .line 230
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException_e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 234
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_5
    move-exception p1

    move-object v2, v1

    .line 228
    :goto_2
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException_e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_0

    .line 234
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception p1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    :goto_3
    return-object v1

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v2, :cond_1

    .line 234
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception v1

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    :goto_5
    throw p1
.end method

.method public recoverToDefaultKeyguardSettings(Landroid/content/Context;)V
    .locals 3

    .line 327
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 328
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->enablePictorialSwitch(Z)V

    .line 330
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 331
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "oppo_unlock_change_pkg"

    const-string v2, "com.android.systemui"

    .line 330
    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 332
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 333
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    const-string v0, "oppo_unlock_change_class"

    const-string v1, "com.android.systemui.keyguard.KeyguardService"

    .line 332
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public vibrateLongWhenVerify()V
    .locals 1

    .line 475
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isWaveformVibratorSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->waveformLongVibrate()V

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isLinearMotorSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateRapidMidByLinearMotor()V

    goto :goto_0

    .line 480
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->defaultLongVibrate()V

    :goto_0
    return-void
.end method

.method public vibrateLongWhenVerifyFail()V
    .locals 1

    .line 485
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isWaveformVibratorSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->waveformLongVibrate()V

    goto :goto_0

    .line 487
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isLinearMotorSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateRapidMidByLinearMotor()V

    goto :goto_0

    .line 490
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateWhenVerifyFail()V

    :goto_0
    return-void
.end method

.method public vibrateShortWhenVerify()V
    .locals 1

    .line 502
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isOppoKeyguardVibratingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isWaveformVibratorSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->waveformShortVibrate()V

    goto :goto_0

    .line 505
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isLinearMotorSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateWeakByLinearMotor()V

    goto :goto_0

    .line 508
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->defaultShortVibrate()V

    :cond_2
    :goto_0
    return-void
.end method
