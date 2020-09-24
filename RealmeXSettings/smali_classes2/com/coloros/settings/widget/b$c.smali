.class public final Lcom/coloros/settings/widget/b$c;
.super Lcom/android/sdk/a$e;
.source "SettingsSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/coloros/settings/widget/b;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/widget/b;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/coloros/settings/widget/b$c;->b:Lcom/coloros/settings/widget/b;

    invoke-direct {p0, p1}, Lcom/android/sdk/a$e;-><init>(Lcom/android/sdk/a;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 120
    invoke-super {p0, p1}, Lcom/android/sdk/a$e;->handleMessage(Landroid/os/Message;)Z

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid SettingsSeekBarVolumizer message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsSeekBarVolumizer"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/b$c;->b:Lcom/coloros/settings/widget/b;

    invoke-static {v0}, Lcom/coloros/settings/widget/b;->e(Lcom/coloros/settings/widget/b;)Z

    .line 134
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    .line 135
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 136
    iget-object p1, p0, Lcom/coloros/settings/widget/b$c;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->f(Lcom/coloros/settings/widget/b;)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 137
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "media_volume"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/widget/b$c;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->g(Lcom/coloros/settings/widget/b;)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 139
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ring_volume"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/widget/b$c;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->h(Lcom/coloros/settings/widget/b;)I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 141
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "alarm_volume"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/widget/b$c;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->a(Lcom/coloros/settings/widget/b;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/widget/b$c;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->b(Lcom/coloros/settings/widget/b;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 125
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "stream_music_adjust"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/widget/b$c;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->c(Lcom/coloros/settings/widget/b;)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 127
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "stream_ring_adjust"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/widget/b$c;->b:Lcom/coloros/settings/widget/b;

    invoke-static {p1}, Lcom/coloros/settings/widget/b;->d(Lcom/coloros/settings/widget/b;)Z

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
