.class public Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;
.super Ljava/lang/Object;
.source "PrefUtil.java"


# static fields
.field public static final U_DOWNLOAD_FILE_SIZE:Ljava/lang/String; = ".download.file.size"

.field public static final U_DOWNLOAD_PROGRESS:Ljava/lang/String; = ".download.progress"

.field public static final U_DOWNLOAD_SIZE:Ljava/lang/String; = ".download.size"

.field public static final U_DOWNLOAD_STATUS:Ljava/lang/String; = ".download.status"

.field private static sContext:Landroid/content/Context;

.field public static sPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadFileSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 73
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 74
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 76
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.file.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadProgress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 97
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 98
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 100
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.progress"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 57
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 60
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 33
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 36
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.status"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "-1"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 23
    sput-object p0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sContext:Landroid/content/Context;

    .line 24
    sget-object p0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    .line 27
    :cond_0
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 28
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 29
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static removeDownloadFileSize(Landroid/content/Context;)V
    .locals 2

    .line 81
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 84
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.file.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeDownloadProgress(Landroid/content/Context;)V
    .locals 2

    .line 113
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 114
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 116
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.progress"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeDownloadStatus(Landroid/content/Context;)V
    .locals 2

    .line 49
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 52
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.status"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDownloadFileSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 89
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 92
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.file.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDownloadProgress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 105
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 106
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 108
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.progress"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDownloadSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 65
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 66
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 68
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.size"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDownloadStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 41
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 42
    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->init(Landroid/content/Context;)V

    .line 44
    :cond_0
    sget-object v0, Lcom/nearme/platform/opensdk/pay/download/util/PrefUtil;->sPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nearme/platform/opensdk/pay/download/util/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".download.status"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
