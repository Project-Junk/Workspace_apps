.class final Lcom/android/settings/development/OverlayCategoryPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "OverlayCategoryPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/OverlayCategoryPreferenceController;->a(Ljava/lang/String;)Z
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/settings/development/OverlayCategoryPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/OverlayCategoryPreferenceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->c:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    iput-object p2, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    const-string v0, "package_device_default"

    .line 123
    iget-object v1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->c:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->a(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->c:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->a(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "OverlayCategoryPC"

    const-string v2, "Error enabling overlay."

    .line 130
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 119
    check-cast p1, Ljava/lang/Boolean;

    .line 1137
    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->c:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->b(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroidx/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 1138
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1139
    iget-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->c:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    .line 1140
    invoke-static {p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->c(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120fe9

    const/4 v1, 0x1

    .line 1139
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1141
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
