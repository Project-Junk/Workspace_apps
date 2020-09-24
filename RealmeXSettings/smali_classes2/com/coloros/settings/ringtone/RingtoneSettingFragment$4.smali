.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$4;
.super Ljava/lang/Object;
.source "RingtoneSettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/RingtoneSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$4;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 694
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$4;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->h(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/ringtone/vibrate/VibrateSettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$4;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->p(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)I

    move-result v0

    const-string v1, "init_vibrate_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$4;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->i(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 697
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$4;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->j(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)I

    move-result v0

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$4;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->n(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
