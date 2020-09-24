.class public Lcom/color/compat/os/EnvironmentNative$UserEnvironmentNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/os/EnvironmentNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironmentNative"
.end annotation


# instance fields
.field private mUserEnvironmentWrapper:Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;-><init>(I)V

    iput-object v0, p0, Lcom/color/compat/os/EnvironmentNative$UserEnvironmentNative;->mUserEnvironmentWrapper:Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;

    return-void
.end method


# virtual methods
.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/color/compat/os/EnvironmentNative$UserEnvironmentNative;->mUserEnvironmentWrapper:Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;

    invoke-virtual {p0}, Lcom/color/inner/os/EnvironmentWrapper$UserEnvironmentWrapper;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "EnvironmentNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
