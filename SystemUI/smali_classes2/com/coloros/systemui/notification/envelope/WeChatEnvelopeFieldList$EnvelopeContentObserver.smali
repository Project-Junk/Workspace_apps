.class public Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$EnvelopeContentObserver;
.super Landroid/database/ContentObserver;
.source "WeChatEnvelopeFieldList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnvelopeContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$EnvelopeContentObserver;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList$EnvelopeContentObserver;->this$0:Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->access$300(Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;)V

    return-void
.end method
