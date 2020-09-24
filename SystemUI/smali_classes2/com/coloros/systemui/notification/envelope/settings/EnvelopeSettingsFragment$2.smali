.class Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$2;
.super Lcom/coloros/systemui/notification/envelope/settings/EnvelopeCountObserver;
.source "EnvelopeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$2;->this$0:Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;

    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeCountObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeCountObserver;->onChange(Z)V

    .line 67
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$2;->this$0:Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->access$100(Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;)Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$2;->this$0:Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->access$100(Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;)Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;->updateCount()V

    :cond_0
    return-void
.end method
