.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$10;
.super Ljava/lang/Object;
.source "RingtoneSettingFragment.java"

# interfaces
.implements Lcom/coloros/settings/ringtone/e$a;


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

    .line 569
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$10;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/ringtone/e;Lcom/coloros/settings/ringtone/f;I)V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$10;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 573
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$10;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1, p2, p3}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/f;I)V

    return-void

    .line 575
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$10;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/e;->b()V

    .line 576
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$10;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->f(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/ringtone/e;->a()V

    return-void
.end method
