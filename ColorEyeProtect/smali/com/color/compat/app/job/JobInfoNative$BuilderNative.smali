.class public final Lcom/color/compat/app/job/JobInfoNative$BuilderNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/app/job/JobInfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderNative"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorExtraStr(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->getColorExtraStr(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColorJob(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->getColorJob(Landroid/app/job/JobInfo$Builder;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getHasCpuConstraint(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->getHasCpuConstraint(Landroid/app/job/JobInfo$Builder;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getRequiresBattIdle(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->getRequiresBattIdle(Landroid/app/job/JobInfo$Builder;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getRequiresProtectFore(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->getRequiresProtectFore(Landroid/app/job/JobInfo$Builder;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static setColorExtraStr(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->setColorExtraStr(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setColorJob(Landroid/app/job/JobInfo$Builder;Z)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->setColorJob(Landroid/app/job/JobInfo$Builder;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setHasCpuConstraint(Landroid/app/job/JobInfo$Builder;Z)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->setHasCpuConstraint(Landroid/app/job/JobInfo$Builder;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setRequiresBattIdle(Landroid/app/job/JobInfo$Builder;ZI)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->setRequiresBattIdle(Landroid/app/job/JobInfo$Builder;ZI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setRequiresProtectFore(Landroid/app/job/JobInfo$Builder;Z)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->setRequiresProtectFore(Landroid/app/job/JobInfo$Builder;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setRequiresProtectFore(Landroid/app/job/JobInfo$Builder;ZI)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/app/job/JobInfoWrapper$BuilderWrapper;->setRequiresProtectFore(Landroid/app/job/JobInfo$Builder;ZI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "JobInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
