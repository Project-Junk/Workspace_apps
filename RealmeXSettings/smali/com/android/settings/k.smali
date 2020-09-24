.class public final Lcom/android/settings/k;
.super Ljava/lang/Object;
.source "SmqSettings.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/k;->a:Landroid/content/Context;

    .line 54
    new-instance p1, Lcom/android/settings/d;

    iget-object v0, p0, Lcom/android/settings/k;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/d;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1}, Lcom/android/settings/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    iget-object p1, p0, Lcom/android/settings/k;->a:Landroid/content/Context;

    const-string v1, "smqpreferences"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/k;->b:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/k;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "app_status"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
