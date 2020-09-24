.class public final Lcom/android/settings/d;
.super Landroid/os/AsyncTask;
.source "DBReadAsyncTask.java"


# annotations
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
.field final a:Landroid/net/Uri;

.field final b:Landroid/net/Uri;

.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "content://com.qti.smq.Feedback.provider"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/d;->a:Landroid/net/Uri;

    .line 56
    iget-object v0, p0, Lcom/android/settings/d;->a:Landroid/net/Uri;

    const-string v1, "smq_settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/d;->b:Landroid/net/Uri;

    .line 65
    iput-object p1, p0, Lcom/android/settings/d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string p1, "app_status"

    .line 1071
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 1073
    iget-object v0, p0, Lcom/android/settings/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/d;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "key=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1076
    iget-object v1, p0, Lcom/android/settings/d;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "smqpreferences"

    .line 1077
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1079
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1080
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x1

    .line 1081
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1083
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 1088
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1089
    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1090
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1097
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1098
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1099
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1105
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
