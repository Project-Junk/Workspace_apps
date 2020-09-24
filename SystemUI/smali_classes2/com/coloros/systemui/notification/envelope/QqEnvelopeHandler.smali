.class public Lcom/coloros/systemui/notification/envelope/QqEnvelopeHandler;
.super Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;
.source "QqEnvelopeHandler.java"


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/QqEnvelopeHandler;->mCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;

    return-void
.end method


# virtual methods
.method protected sendEnvelopeNotification(Landroid/content/Context;IILandroid/app/Notification;ILjava/lang/String;ZZ)V
    .locals 0

    return-void
.end method
