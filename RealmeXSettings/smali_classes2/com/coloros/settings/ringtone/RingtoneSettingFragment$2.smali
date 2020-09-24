.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$2;
.super Ljava/lang/Object;
.source "RingtoneSettingFragment.java"

# interfaces
.implements Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;


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

    .line 648
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$2;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/ringtone/f;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$2;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->o(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/color/support/preference/ColorJumpPreference;

    move-result-object v0

    .line 1051
    iget-object v1, p1, Lcom/coloros/settings/ringtone/f;->a:Ljava/lang/String;

    .line 652
    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$2;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0, p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/f;)Lcom/coloros/settings/ringtone/f;

    return-void
.end method
