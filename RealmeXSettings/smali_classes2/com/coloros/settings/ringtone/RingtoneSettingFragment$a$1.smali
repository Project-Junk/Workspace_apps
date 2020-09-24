.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a$1;
.super Ljava/lang/Object;
.source "RingtoneSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;

.field final synthetic b:Lcom/coloros/settings/ringtone/f;

.field final synthetic c:Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;Lcom/coloros/settings/ringtone/f;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a$1;->c:Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a$1;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;

    iput-object p3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a$1;->b:Lcom/coloros/settings/ringtone/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a$1;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;

    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a$1;->b:Lcom/coloros/settings/ringtone/f;

    invoke-interface {v0, v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;->a(Lcom/coloros/settings/ringtone/f;)V

    return-void
.end method
