.class public final Lsubstratum/theme/template/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final ALLOW_THIRD_PARTY_SUBSTRATUM_BUILDS:Z = true

.field public static final APK_SIGNATURE_PRODUCTION:Ljava/lang/String; = ""

.field public static final APPLICATION_ID:Ljava/lang/String; = "com.theglitchh.bettle"

.field public static final BASE_64_LICENSE_KEY:Ljava/lang/String; = ""

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final DECRYPTION_KEY:[B

.field public static final ENABLE_APP_BLACKLIST_CHECK:Z = false

.field public static final ENFORCE_GOOGLE_PLAY_INSTALL:Z = false

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final IV_KEY:[B

.field public static final SUPPORTS_THIRD_PARTY_SYSTEMS:Z = false

.field public static final VERSION_CODE:I = 0x2

.field public static final VERSION_NAME:Ljava/lang/String; = "2.0"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lsubstratum/theme/template/BuildConfig;->DEBUG:Z

    .line 19
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lsubstratum/theme/template/BuildConfig;->DECRYPTION_KEY:[B

    .line 21
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lsubstratum/theme/template/BuildConfig;->IV_KEY:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x5t
        -0x61t
        -0x5bt
        0x78t
        0x6at
        0x6et
        -0x20t
        -0x2t
        -0x6t
        -0x2ft
        -0x4et
        -0xct
        0x15t
        0x19t
        0x42t
        0x58t
    .end array-data

    :array_1
    .array-data 1
        -0x1at
        0x19t
        -0x2ft
        0x4ft
        0x11t
        0x5bt
        0x63t
        -0x25t
        -0x56t
        0xet
        0x37t
        -0x3dt
        -0x22t
        0x56t
        0x76t
        -0x55t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
