.class final Lcom/android/settings/users/AppRestrictionsFragment$a;
.super Landroid/os/AsyncTask;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
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
.field final synthetic a:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$a;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;B)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$a;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 9

    .line 326
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$a;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->b(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/p/a;

    move-result-object v0

    .line 1163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    .line 1164
    iget-object v1, v0, Lcom/android/settingslib/p/a;->a:Landroid/content/pm/PackageManager;

    .line 1165
    iget-object v2, v0, Lcom/android/settingslib/p/a;->b:Landroid/content/pm/IPackageManager;

    .line 1167
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1168
    invoke-virtual {v0, v3}, Lcom/android/settingslib/p/a;->a(Ljava/util/Set;)V

    .line 1171
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    iget-boolean v5, v0, Lcom/android/settingslib/p/a;->e:Z

    if-eqz v5, :cond_0

    const-string v5, "android.intent.category.LEANBACK_LAUNCHER"

    .line 1173
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v5, "android.intent.category.LAUNCHER"

    .line 1175
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1177
    :goto_0
    iget-object v5, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/settingslib/p/a;->a(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    .line 1180
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1181
    iget-object v5, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/settingslib/p/a;->a(Ljava/util/List;Landroid/content/Intent;Ljava/util/Set;)V

    const/high16 v3, 0x400000

    .line 1183
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 1185
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x800000

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 1187
    iget v7, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 1189
    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_2

    .line 1192
    new-instance v5, Lcom/android/settingslib/p/a$d;

    invoke-direct {v5}, Lcom/android/settingslib/p/a$d;-><init>()V

    .line 1193
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    .line 1194
    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/p/a$d;->b:Ljava/lang/CharSequence;

    .line 1195
    iget-object v6, v5, Lcom/android/settingslib/p/a$d;->b:Ljava/lang/CharSequence;

    iput-object v6, v5, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    .line 1196
    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v5, Lcom/android/settingslib/p/a$d;->d:Landroid/graphics/drawable/Drawable;

    .line 1197
    iget-object v4, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1200
    :cond_2
    :try_start_0
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1204
    iget-boolean v6, v0, Lcom/android/settingslib/p/a;->d:Z

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1206
    iget-object v5, v0, Lcom/android/settingslib/p/a;->f:Ljava/util/HashMap;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    const/16 v3, 0x2000

    const/4 v4, 0x0

    .line 1217
    :try_start_1
    iget-object v7, v0, Lcom/android/settingslib/p/a;->c:Landroid/os/UserHandle;

    .line 1218
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1217
    invoke-interface {v2, v3, v7}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1220
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_4
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_6

    .line 1227
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 1228
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v6

    if-eqz v7, :cond_5

    .line 1230
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_5

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_5

    .line 1233
    new-instance v7, Lcom/android/settingslib/p/a$d;

    invoke-direct {v7}, Lcom/android/settingslib/p/a$d;-><init>()V

    .line 1234
    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    .line 1235
    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/p/a$d;->b:Ljava/lang/CharSequence;

    .line 1236
    iget-object v8, v7, Lcom/android/settingslib/p/a$d;->b:Ljava/lang/CharSequence;

    iput-object v8, v7, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    .line 1237
    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v7, Lcom/android/settingslib/p/a$d;->d:Landroid/graphics/drawable/Drawable;

    .line 1238
    iget-object v3, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1244
    :cond_6
    iget-object v1, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    new-instance v2, Lcom/android/settingslib/p/a$a;

    invoke-direct {v2, v5}, Lcom/android/settingslib/p/a$a;-><init>(B)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1247
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1248
    iget-object v2, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_4
    if-ltz v2, :cond_8

    .line 1249
    iget-object v3, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/p/a$d;

    .line 1251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1252
    iget-object v6, v3, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v3, v3, Lcom/android/settingslib/p/a$d;->c:Ljava/lang/CharSequence;

    .line 1253
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1254
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1255
    iget-object v3, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    .line 1257
    :cond_7
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1262
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1263
    iget-object v0, v0, Lcom/android/settingslib/p/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/p/a$d;

    .line 1264
    iget-object v3, v2, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1265
    iget-object v3, v2, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/p/a$d;

    iput-object v3, v2, Lcom/android/settingslib/p/a$d;->e:Lcom/android/settingslib/p/a$d;

    goto :goto_6

    .line 1267
    :cond_9
    iget-object v3, v2, Lcom/android/settingslib/p/a$d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    return-object v4
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 322
    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment$a;->a()Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1332
    iget-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$a;->a:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment;->c(Lcom/android/settings/users/AppRestrictionsFragment;)V

    return-void
.end method
