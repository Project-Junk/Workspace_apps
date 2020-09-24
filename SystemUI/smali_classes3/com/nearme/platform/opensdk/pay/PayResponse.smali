.class public Lcom/nearme/platform/opensdk/pay/PayResponse;
.super Ljava/lang/Object;
.source "PayResponse.java"


# static fields
.field public static final CODE_CANCEL:I = 0x3ec

.field public static final CODE_RESULT_UNKNOWN:I = 0x3ed

.field public static final CODE_SUCCESS:I = 0x3e9

.field public static final ERROR_ABSENCE_PARAM:I = 0x4b1

.field public static final ERROR_AMOUNT_ERROR:I = 0x1388

.field public static final ERROR_AUTH_FAILED:I = 0x138d

.field public static final ERROR_BALANCE_NOT_ENOUGH:I = 0x138a

.field public static final ERROR_DIRECTPAY_FAILED:I = 0x9c41

.field public static final ERROR_DIRECTPAY_FAILED_UNSAFE:I = 0x9c43

.field public static final ERROR_DIRECTPAY_SUCCESS:I = 0x9c40

.field public static final ERROR_DIRECTPAY_UNKNOWN:I = 0x9c42

.field public static final ERROR_IN_PROGRESS:I = 0x3f4

.field public static final ERROR_MERCHANT_ORDERID_REPEAT:I = 0x138e

.field public static final ERROR_NO_NEW_VERSION:I = 0x3ef

.field public static final ERROR_ORDERID_REPEAT:I = 0x3ea

.field public static final ERROR_OVER_MAX_LIMIT:I = 0x3eb

.field public static final ERROR_PARAM_INVALID:I = 0x138b

.field public static final ERROR_PAY_FAIL:I = 0x44c

.field public static final ERROR_PAY_FAILED:I = 0x15b3

.field public static final ERROR_PAY_FAILED_OTHER:I = 0x3f2

.field public static final ERROR_QUERY_BALANCE_FAILED:I = 0x7531

.field public static final ERROR_QUERY_BALANCE_SUCCESS:I = 0x7530

.field public static final ERROR_QUERY_BALANCE_UNKNOWN:I = 0x7532

.field public static final ERROR_QUERY_ORDER_FAILED:I = 0xc351

.field public static final ERROR_QUERY_ORDER_SUCCESS:I = 0xc350

.field public static final ERROR_QUERY_ORDER_UNKNOWN:I = 0xc352

.field public static final ERROR_SINAGURE_ERROR:I = 0x4b0

.field public static final ERROR_SYSTEM_ERROR:I = 0x1389

.field public static final ERROR_USER_NOT_EXISTS:I = 0x138c


# instance fields
.field public mErrorCode:I

.field public mMsg:Ljava/lang/String;

.field public mOder:Ljava/lang/String;

.field public mPayChannel:Ljava/lang/String;

.field public mRawMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMsg(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3ef

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3f2

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3f4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_3

    const/16 v0, 0x15b3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4b0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4b1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string v0, "\u67e5\u8be2\u4f59\u989d\u5931\u8d25"

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const-string p0, "\u672a\u77e5\u7ed3\u679c"

    return-object p0

    :pswitch_0
    const-string p0, "\u67e5\u8be2\u8ba2\u5355\u7ed3\u679c\u672a\u77e5"

    return-object p0

    :pswitch_1
    const-string p0, "\u67e5\u8be2\u8ba2\u5355\u5931\u8d25"

    return-object p0

    :pswitch_2
    const-string p0, "\u67e5\u8be2\u8ba2\u5355\u6210\u529f"

    return-object p0

    :pswitch_3
    const-string p0, "\u76f4\u63a5\u4ed8\u6b3e\u7ed3\u679c\u672a\u77e5"

    return-object p0

    :pswitch_4
    const-string p0, "\u76f4\u63a5\u4ed8\u6b3e\u5931\u8d25"

    return-object p0

    :pswitch_5
    const-string p0, "\u76f4\u63a5\u4ed8\u6b3e\u6210\u529f"

    return-object p0

    :pswitch_6
    const-string p0, "\u67e5\u8be2\u4f59\u989d\u7ed3\u679c\u672a\u77e5"

    return-object p0

    :pswitch_7
    return-object v0

    :pswitch_8
    const-string p0, "\u5546\u6237\u8ba2\u5355\u53f7\u91cd\u590d"

    return-object p0

    :pswitch_9
    const-string p0, "\u767b\u5f55\u9274\u6743\u5931\u8d25"

    return-object p0

    :pswitch_a
    const-string p0, "\u7528\u6237\u4e0d\u5b58\u5728"

    return-object p0

    :pswitch_b
    const-string p0, "\u53c2\u6570\u5f02\u5e38"

    return-object p0

    :pswitch_c
    const-string p0, "\u4f59\u989d\u4e0d\u8db3"

    return-object p0

    :pswitch_d
    const-string p0, "\u7cfb\u7edf\u9519\u8bef"

    return-object p0

    :pswitch_e
    const-string p0, "\u91d1\u989d\u9519\u8bef"

    return-object p0

    :pswitch_f
    const-string p0, "\u7ed3\u679c\u672a\u77e5"

    return-object p0

    :pswitch_10
    const-string p0, "\u53d6\u6d88"

    return-object p0

    :pswitch_11
    const-string p0, "\u8d85\u8fc7\u6700\u5927\u9650\u989d"

    return-object p0

    :pswitch_12
    const-string p0, "\u8ba2\u5355\u53f7\u91cd\u590d"

    return-object p0

    :pswitch_13
    const-string p0, "\u6210\u529f"

    return-object p0

    :cond_0
    const-string p0, "\u7f3a\u5c11\u53c2\u6570"

    return-object p0

    :cond_1
    const-string p0, "\u7b7e\u540d\u9519\u8bef"

    return-object p0

    :cond_2
    const-string p0, "\u6b63\u5728\u5904\u7406\u4e2d"

    return-object p0

    :cond_3
    const-string p0, "\u652f\u4ed8\u5931\u8d25"

    return-object p0

    :cond_4
    const-string p0, "\u7248\u672c\u65e0\u66f4\u65b0"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1388
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7530
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9c40
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc350
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/nearme/platform/opensdk/pay/PayResponse;
    .locals 6

    const-string v0, "payChannel"

    const-string v1, "order"

    const-string v2, "msg"

    if-eqz p0, :cond_6

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    new-instance v3, Lcom/nearme/platform/opensdk/pay/PayResponse;

    invoke-direct {v3}, Lcom/nearme/platform/opensdk/pay/PayResponse;-><init>()V

    .line 95
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "errCode"

    .line 96
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    .line 97
    iget v5, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    invoke-static {v5}, Lcom/nearme/platform/opensdk/pay/PayResponse;->getMsg(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    .line 98
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->mOder:Ljava/lang/String;

    .line 101
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->mPayChannel:Ljava/lang/String;

    .line 104
    :cond_2
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->mRawMsg:Ljava/lang/String;

    .line 108
    :cond_3
    iget-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    const-string v1, "\u672a\u77e5\u7ed3\u679c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    :cond_4
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    const-class v0, Lcom/nearme/platform/opensdk/pay/PayResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse error. response is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-object v3

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
