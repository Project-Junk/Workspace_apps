.class Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;
.super Ljava/lang/Object;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeleteRequest"
.end annotation


# instance fields
.field mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;

.field mIccid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method