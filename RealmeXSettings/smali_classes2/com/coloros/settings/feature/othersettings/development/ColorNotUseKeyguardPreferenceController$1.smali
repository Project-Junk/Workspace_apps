.class final Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController$1;
.super Ljava/lang/Object;
.source "ColorNotUseKeyguardPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;->b(Lcom/coloros/settings/feature/othersettings/development/ColorNotUseKeyguardPreferenceController;)V

    return-void
.end method