.class final Lcom/coloros/settings/feature/othersettings/recover/d$a;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ClearContactsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/recover/d;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/d;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/d$a;->a:Lcom/coloros/settings/feature/othersettings/recover/d;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;)V
    .locals 2

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.agenda.contacts.DATA_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.calendar"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const v0, 0x7f120500

    const/4 v1, 0x1

    .line 86
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic lambda$sSzKayzPQ-szxzudxXraGVthl-0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/recover/d$a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRemoveCompleted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClearContactsStrategy"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 78
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.android.contacts"

    const-string v0, "oppo.missed.calls.number"

    .line 79
    invoke-static {p1, p2, v0}, Lcom/coloros/settings/feature/othersettings/recover/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$d$a$sSzKayzPQ-szxzudxXraGVthl-0;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$d$a$sSzKayzPQ-szxzudxXraGVthl-0;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
