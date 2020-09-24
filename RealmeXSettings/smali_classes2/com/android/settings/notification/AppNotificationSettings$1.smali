.class final Lcom/android/settings/notification/AppNotificationSettings$1;
.super Landroid/os/AsyncTask;
.source "AppNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/AppNotificationSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic a:Lcom/android/settings/notification/AppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/AppNotificationSettings;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->a:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2100
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->a:Lcom/android/settings/notification/AppNotificationSettings;

    iget-object v0, p1, Lcom/android/settings/notification/AppNotificationSettings;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->a:Lcom/android/settings/notification/AppNotificationSettings;

    iget v1, v1, Lcom/android/settings/notification/AppNotificationSettings;->f:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/k;->b(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/AppNotificationSettings;->a(Lcom/android/settings/notification/AppNotificationSettings;Ljava/util/List;)Ljava/util/List;

    .line 2101
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->a:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/AppNotificationSettings;->a(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->a:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/AppNotificationSettings;->b(Lcom/android/settings/notification/AppNotificationSettings;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1107
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->a:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-virtual {p1}, Lcom/android/settings/notification/AppNotificationSettings;->getHost()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1110
    iget-object p1, p0, Lcom/android/settings/notification/AppNotificationSettings$1;->a:Lcom/android/settings/notification/AppNotificationSettings;

    invoke-static {p1}, Lcom/android/settings/notification/AppNotificationSettings;->c(Lcom/android/settings/notification/AppNotificationSettings;)V

    :cond_0
    return-void
.end method
