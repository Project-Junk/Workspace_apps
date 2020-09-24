.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$3;
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

    .line 666
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$3;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 669
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.nearme.themespace.ONLINE_RING"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$3;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->n(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 673
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
