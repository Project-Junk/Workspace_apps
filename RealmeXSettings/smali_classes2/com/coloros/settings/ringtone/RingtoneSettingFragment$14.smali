.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;
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

    .line 630
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 633
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->h(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "FilterFileType"

    const v1, 0xc000008

    .line 634
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->i(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 636
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->j(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)I

    move-result v0

    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->k(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)I

    move-result v0

    const-string v1, "color_ringtone_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->l(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Z

    move-result v0

    const-string v1, "sim_picker_dialog_show"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 639
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->m(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    const v1, 0x7f12142b

    invoke-virtual {v0, v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$14;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->n(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
