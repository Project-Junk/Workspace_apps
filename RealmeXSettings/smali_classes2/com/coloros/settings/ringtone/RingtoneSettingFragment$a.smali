.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;
.super Ljava/lang/Object;
.source "RingtoneSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/RingtoneSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/ringtone/RingtoneSettingFragment;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;Landroid/net/Uri;)V
    .locals 1

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;->a:Ljava/lang/ref/WeakReference;

    .line 1117
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;->b:Ljava/lang/ref/WeakReference;

    .line 1118
    iput-object p3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1123
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1129
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    new-instance v1, Lcom/coloros/settings/ringtone/f;

    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;->c:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Lcom/coloros/settings/ringtone/f;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1131
    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    .line 1132
    iget-object v2, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;

    if-eqz v0, :cond_1

    .line 1133
    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 1134
    new-instance v0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a$1;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment$a;Lcom/coloros/settings/ringtone/RingtoneSettingFragment$b;Lcom/coloros/settings/ringtone/f;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
