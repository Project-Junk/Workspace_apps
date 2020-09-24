.class final Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;
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

    .line 718
    iput-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/ringtone/f;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1051
    iget-object v1, p1, Lcom/coloros/settings/ringtone/f;->a:Ljava/lang/String;

    .line 721
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Z)Z

    .line 727
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    new-instance v3, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5$1;

    invoke-direct {v3, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5$1;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;)V

    invoke-static {v1, v3}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Lcom/coloros/settings/ringtone/e$a;)V

    .line 738
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->q(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;

    move-result-object v1

    new-instance v3, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5$2;

    invoke-direct {v3, p0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5$2;-><init>(Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;)V

    .line 2051
    iput-object v3, v1, Lcom/coloros/settings/ringtone/e;->c:Lcom/coloros/settings/ringtone/e$a;

    .line 744
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->q(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-virtual {v3}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coloros/settings/ringtone/e;->b(Landroidx/preference/PreferenceScreen;)V

    .line 745
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->q(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;

    move-result-object v1

    new-array v2, v2, [Lcom/coloros/settings/ringtone/f;

    aput-object p1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/ringtone/e;->a(Ljava/util/List;)V

    .line 746
    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->s(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {v1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->s(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Landroid/net/Uri;

    move-result-object v1

    .line 3047
    iget-object p1, p1, Lcom/coloros/settings/ringtone/f;->b:Landroid/net/Uri;

    .line 746
    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 747
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->q(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/ringtone/e;->b(I)V

    :cond_1
    return-void

    .line 722
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1, v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->a(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;Z)Z

    .line 723
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->q(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/ringtone/e;->a(Landroidx/preference/PreferenceScreen;)V

    .line 724
    iget-object p1, p0, Lcom/coloros/settings/ringtone/RingtoneSettingFragment$5;->a:Lcom/coloros/settings/ringtone/RingtoneSettingFragment;

    invoke-static {p1}, Lcom/coloros/settings/ringtone/RingtoneSettingFragment;->r(Lcom/coloros/settings/ringtone/RingtoneSettingFragment;)Lcom/coloros/settings/ringtone/e;

    return-void
.end method
