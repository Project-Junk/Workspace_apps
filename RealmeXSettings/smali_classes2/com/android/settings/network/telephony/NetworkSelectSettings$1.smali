.class final Lcom/android/settings/network/telephony/NetworkSelectSettings$1;
.super Landroid/os/Handler;
.source "NetworkSelectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/NetworkSelectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/NetworkSelectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const v2, 0x7f1208b5

    if-eq v0, v1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    .line 254
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p1, p1, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d:Ljava/util/List;

    if-nez p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    :cond_1
    :goto_0
    return-void

    .line 248
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    .line 249
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    const v0, 0x7f120e28

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    return-void

    .line 235
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellInfoList after aggregation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Lcom/android/settings/network/telephony/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkSelectSettings"

    .line 236
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d:Ljava/util/List;

    .line 239
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p1, p1, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object p1, p1, Lcom/android/settings/network/telephony/NetworkSelectSettings;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 240
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->c()V

    return-void

    .line 242
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V

    return-void

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->a(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 229
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 230
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;->a:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object v0, v0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->c:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz p1, :cond_6

    const p1, 0x7f120e16

    goto :goto_1

    :cond_6
    const p1, 0x7f120e1e

    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setSummary(I)V

    return-void
.end method
