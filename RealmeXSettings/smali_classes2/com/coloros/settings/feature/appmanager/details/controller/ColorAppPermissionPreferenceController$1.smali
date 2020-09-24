.class final Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "ColorAppPermissionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->loadPermissionInfoAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$1;->a:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 127
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1135
    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$1;->a:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-static {v1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->access$100(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$1;->a:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->access$200(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1140
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 127
    check-cast p1, Ljava/lang/Integer;

    .line 1130
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$1;->a:Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->access$000(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;I)V

    return-void
.end method
