.class public Lcom/heytap/service/accountsdk/keys/UCServiceConstant;
.super Ljava/lang/Object;
.source "UCServiceConstant.java"


# static fields
.field private static final ACTION_NEARME_SERVER_OP_BYAPPCODE_XOR_8:Ljava/lang/String; = "kge&fmizem&{mz~mz&gxxg{mz~akmjqixxkglm"

.field private static final ACTION_NEARME_SERVER_OP_XOR_8:Ljava/lang/String; = "kge&fmizem&{mz~mz&gxxg{mz~akm"

.field public static final ACTION_USERCENTER_FUC_ACTIVITY_XOR_8:Ljava/lang/String; = "gxxg&af|mf|&ik|agf&n}fk|agffi~aoi|agf"

.field public static final ACTION_USERCENTER_SELECT_ACCOUNT_XOR_8:Ljava/lang/String; = "gxxg&af|mf|&ik|agf&{mdmk|&ikkg}f|"

.field private static final PROVIDER_SERVICE_ACCOUNT_URI_XOR_8:Ljava/lang/String; = "kgf|mf|2\'\'kge&gxxg&{mz~akm&ikkg}f|&|gcmfxzg~almz"

.field private static final PROVIDER_USRECENTER_ACCOUNT_URI_XOR_8:Ljava/lang/String; = "kgf|mf|2\'\'kge&gxxg&}{mzkmf|mz&ikkg}f|afng"

.field public static final UPDATE_ACCOUNT_INFO_BROAD_CAST_XOR_8:Ljava/lang/String; = "kge&gxxg&{mz~akm&ikkg}f|&}xli|mikkg}f|afngzmkma~mz"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNearmeAppcodeServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "kge&fmizem&{mz~mz&gxxg{mz~akmjqixxkglm"

    .line 113
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getNearmeServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "kge&fmizem&{mz~mz&gxxg{mz~akm"

    .line 105
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceTokenProvider()Ljava/lang/String;
    .locals 1

    const-string v0, "kgf|mf|2\'\'kge&gxxg&{mz~akm&ikkg}f|&|gcmfxzg~almz"

    .line 89
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUCAccountInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "kgf|mf|2\'\'kge&gxxg&}{mzkmf|mz&ikkg}f|afng"

    .line 97
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final selectAccountAction()Ljava/lang/String;
    .locals 1

    const-string v0, "gxxg&af|mf|&ik|agf&{mdmk|&ikkg}f|"

    .line 42
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final ucFucAction()Ljava/lang/String;
    .locals 1

    const-string v0, "gxxg&af|mf|&ik|agf&n}fk|agffi~aoi|agf"

    .line 51
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final updateAccountInfoBroadCast()Ljava/lang/String;
    .locals 1

    const-string v0, "kge&gxxg&{mz~akm&ikkg}f|&}xli|mikkg}f|afngzmkma~mz"

    .line 60
    invoke-static {v0}, Lcom/platform/usercenter/heytap/UCHeyTapCommonProvider;->getNormalStrByDecryptXOR8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
