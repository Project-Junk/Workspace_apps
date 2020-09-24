.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$7;
.super Ljava/lang/Object;
.source "RingtoneSettingFragment.java"

# interfaces
.implements Lcom/coloros/settings/ringtone/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
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

    .line 301
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$7;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$7;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->c(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/coloros/settings/ringtone/g;->a:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$7;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->d(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Z

    :cond_0
    return-void
.end method
