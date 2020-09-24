.class Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$1;
.super Lcom/coloros/systemui/notification/envelope/settings/EnvelopeEnableObserver;
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

    .line 53
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$1;->this$0:Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;

    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeEnableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeEnableObserver;->onChange(Z)V

    .line 57
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$1;->this$0:Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->access$000(Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$1;->this$0:Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;

    invoke-static {p1}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->access$000(Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;)Lcom/color/support/preference/ColorSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$1;->this$0:Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAssistantEnable(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
