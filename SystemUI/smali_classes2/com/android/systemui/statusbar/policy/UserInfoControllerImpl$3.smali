.class Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;
.super Landroid/os/AsyncTask;
.source "UserInfoControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->queryForUserInformation()V
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
        "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field final synthetic val$avatarSize:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isGuest:Z

.field final synthetic val$lightIcon:Z

.field final synthetic val$userId:I

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;IILandroid/content/Context;ZZ)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$avatarSize:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$context:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$isGuest:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$lightIcon:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;
    .locals 10

    const-string p1, "display_name"

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userName:Ljava/lang/String;

    .line 169
    iget v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v3, Lcom/android/settingslib/drawable/UserIconDrawable;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$avatarSize:I

    invoke-direct {v3, v4}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    .line 172
    invoke-virtual {v3, v2}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v2

    goto :goto_1

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$context:Landroid/content/Context;

    .line 175
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$isGuest:Z

    if-eqz v3, :cond_1

    const/16 v3, -0x2710

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$lightIcon:Z

    .line 174
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 182
    :goto_1
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    filled-new-array {v3, p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 210
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 211
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_2
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 216
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v3, "Statusbar"

    const-string v4, "UserInfoController"

    const-string v5, ""

    .line 219
    invoke-static {v3, v4, v5, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :cond_3
    :goto_2
    iget p0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserAccount(I)Ljava/lang/String;

    move-result-object p0

    .line 224
    new-instance p1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    invoke-direct {p1, v1, v2, p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 159
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$102(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$202(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->getUserAccount()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->onPostExecute(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;)V

    return-void
.end method
