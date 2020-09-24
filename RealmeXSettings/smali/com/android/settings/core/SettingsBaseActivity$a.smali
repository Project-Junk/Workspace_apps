.class final Lcom/android/settings/core/SettingsBaseActivity$a;
.super Landroid/os/AsyncTask;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/SettingsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/core/SettingsBaseActivity;

.field private final b:Lcom/android/settings/dashboard/a;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$a;->a:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 281
    invoke-static {p1}, Lcom/android/settings/dashboard/a;->a(Landroid/content/Context;)Lcom/android/settings/dashboard/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$a;->b:Lcom/android/settings/dashboard/a;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2286
    iget-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$a;->b:Lcom/android/settings/dashboard/a;

    iget-object v0, p0, Lcom/android/settings/core/SettingsBaseActivity$a;->a:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/a;->c(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1292
    iget-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$a;->b:Lcom/android/settings/dashboard/a;

    invoke-static {}, Lcom/android/settings/core/SettingsBaseActivity;->access$100()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/a;->a(Ljava/util/Set;)V

    .line 1293
    iget-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$a;->a:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-static {p1}, Lcom/android/settings/core/SettingsBaseActivity;->access$200(Lcom/android/settings/core/SettingsBaseActivity;)V

    return-void
.end method
