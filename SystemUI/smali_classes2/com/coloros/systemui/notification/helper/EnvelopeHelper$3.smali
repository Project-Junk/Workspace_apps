.class Lcom/coloros/systemui/notification/helper/EnvelopeHelper$3;
.super Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSoundObserver;
.source "EnvelopeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/EnvelopeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSoundObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    iget-object p1, p1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeNoticeSoundEnable(Landroid/content/Context;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->access$402(Lcom/coloros/systemui/notification/helper/EnvelopeHelper;I)I

    :cond_0
    return-void
.end method