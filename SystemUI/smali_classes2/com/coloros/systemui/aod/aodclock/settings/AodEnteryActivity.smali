.class public Lcom/coloros/systemui/aod/aodclock/settings/AodEnteryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AodEnteryActivity.java"


# static fields
.field private static final ACTION_WANT:Ljava/lang/String; = "want"

.field private static final ACTION_WANT_CLOCK:Ljava/lang/String; = "clock"

.field private static final ACTION_WANT_SIGNATURE:Ljava/lang/String; = "signature"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodEnteryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "want"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "signature"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/coloros/systemui/aod/aodclock/settings/AodSignatureSettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/AodEnteryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/coloros/systemui/aod/aodclock/settings/AodSettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/AodEnteryActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const p1, 0x7f01006b

    const v0, 0x7f01006c

    .line 43
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/AodEnteryActivity;->overridePendingTransition(II)V

    .line 44
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/AodEnteryActivity;->finish()V

    return-void
.end method
