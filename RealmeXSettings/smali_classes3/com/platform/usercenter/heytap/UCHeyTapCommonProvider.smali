.class public Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;
.super Ljava/lang/Object;
.source "UCHeyTapCommonProvider.java"


# static fields
.field private static final BRAND_COLOR:Ljava/lang/String; = "KgdgzG["

.field private static final BRAND_ONE:Ljava/lang/String; = "gfmxd}{"

.field private static final BRAND_ONE_UPPERCASE:Ljava/lang/String; = "GfmXd}{"

.field private static final BRAND_OP:Ljava/lang/String; = "gxxg"

.field private static final BRAND_OP_UPPERCASE:Ljava/lang/String; = "GXXG"

.field private static final BRAND_REAL:Ljava/lang/String; = "zmidem"

.field private static final BRAND_REAL_UPPERCASE:Ljava/lang/String; = "Zmidem"

.field public static final KEYTAP_XOR_KEY:I = 0x8

.field private static final PKGNAME_UC_HEYTAP_XOR_8:Ljava/lang/String; = "kge&`mq|ix&}{mzkmf|mz"

.field private static final PKGNAME_UC_SERVICE_XOR_8:Ljava/lang/String; = "kge&gxxg&{mz~akm&ikkg}f|"

.field private static final PKGNAME_UC_XOR_8:Ljava/lang/String; = "kge&gxxg&}{mzkmf|mz"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrandGreen()Ljava/lang/String;
    .locals 2

    const-string v0, "gxxg"

    const/16 v1, 0x8

    .line 120
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrandGreenUppercase()Ljava/lang/String;
    .locals 2

    const-string v0, "GXXG"

    const/16 v1, 0x8

    .line 127
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrandOrange()Ljava/lang/String;
    .locals 2

    const-string v0, "zmidem"

    const/16 v1, 0x8

    .line 155
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrandOrangeUppercase()Ljava/lang/String;
    .locals 2

    const-string v0, "Zmidem"

    const/16 v1, 0x8

    .line 162
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrandRed()Ljava/lang/String;
    .locals 2

    const-string v0, "gfmxd}{"

    const/16 v1, 0x8

    .line 134
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBrandRedUppercase()Ljava/lang/String;
    .locals 2

    const-string v0, "GfmXd}{"

    const/16 v1, 0x8

    .line 141
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColorSysName()Ljava/lang/String;
    .locals 2

    const-string v0, "KgdgzG["

    const/16 v1, 0x8

    .line 148
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    .line 166
    invoke-static {p0, v0}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPkgnameUcHeytapXor8()Ljava/lang/String;
    .locals 1

    const-string v0, "kge&`mq|ix&}{mzkmf|mz"

    .line 76
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUCPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "kge&gxxg&}{mzkmf|mz"

    .line 84
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUCServicePackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "kge&gxxg&{mz~akm&ikkg}f|"

    .line 92
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBrandGreen(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "gxxg"

    const/16 v1, 0x8

    .line 99
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBrandOrange(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "zmidem"

    const/16 v1, 0x8

    .line 113
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isBrandRed(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "gfmxd}{"

    const/16 v1, 0x8

    .line 106
    invoke-static {v0, v1}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
