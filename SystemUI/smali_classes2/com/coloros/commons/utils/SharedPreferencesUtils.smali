.class public Lcom/coloros/commons/utils/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/commons/utils/SharedPreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16
    invoke-static {p0}, Lcom/coloros/commons/utils/ParamCheckUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    invoke-static {p1}, Lcom/coloros/commons/utils/ParamCheckUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    invoke-static {p2}, Lcom/coloros/commons/utils/ParamCheckUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 22
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/coloros/commons/utils/ParamCheckUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    invoke-static {p1}, Lcom/coloros/commons/utils/ParamCheckUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    invoke-static {p2}, Lcom/coloros/commons/utils/ParamCheckUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    invoke-static {p3}, Lcom/coloros/commons/utils/ParamCheckUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 34
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
