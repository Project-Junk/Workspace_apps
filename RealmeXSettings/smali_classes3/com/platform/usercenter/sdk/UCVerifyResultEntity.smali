.class public Lcom/platform/usercenter/sdk/UCVerifyResultEntity;
.super Ljava/lang/Object;
.source "UCVerifyResultEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/platform/usercenter/sdk/UCVerifyResultEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorCode:Ljava/lang/String;

.field public isSuccess:Z

.field public operateKey:Ljava/lang/String;

.field public requestCode:Ljava/lang/String;

.field public resultMessage:Ljava/lang/String;

.field public ticketNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity$1;

    invoke-direct {v0}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity$1;-><init>()V

    sput-object v0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->operateKey:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->operateKey:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    .line 36
    iput-object p4, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public static fromGson(Ljava/lang/String;)Lcom/platform/usercenter/sdk/UCVerifyResultEntity;
    .locals 10

    const-string v0, "errorCode"

    const-string v1, "ticketNo"

    const-string v2, "resultMessage"

    const-string v3, "isSuccess"

    const-string v4, "operateKey"

    const-string v5, "requestCode"

    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    return-object v7

    .line 81
    :cond_0
    new-instance v6, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;

    invoke-direct {v6}, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;-><init>()V

    .line 84
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v9, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v9, :cond_1

    .line 86
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    .line 89
    :cond_1
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v5, :cond_2

    .line 90
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->operateKey:Ljava/lang/String;

    .line 93
    :cond_2
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v4, :cond_3

    .line 94
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v6, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    .line 97
    :cond_3
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v3, :cond_4

    .line 98
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    .line 101
    :cond_4
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v2, :cond_5

    .line 102
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    .line 105
    :cond_5
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v1, :cond_6

    .line 106
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v6

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 119
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "requestCode"

    .line 120
    iget-object v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "operateKey"

    .line 121
    iget-object v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->operateKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isSuccess"

    .line 122
    iget-boolean v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "resultMessage"

    .line 123
    iget-object v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ticketNo"

    .line 124
    iget-object v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    .line 125
    iget-object v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UCVerifyResultEntity{requestCode=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", operateKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->operateKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", resultMessage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ticketNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 48
    iget-object p2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->requestCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->operateKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-boolean p2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->isSuccess:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    iget-object p2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->resultMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->ticketNo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/platform/usercenter/sdk/UCVerifyResultEntity;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
