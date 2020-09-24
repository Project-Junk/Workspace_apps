.class public Lcom/android/systemui/SystemBars;
.super Lcom/android/systemui/SystemUI;
.source "SystemBars.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemBars"

.field private static final WAIT_FOR_BARS_TO_DIE:I = 0x1f4


# instance fields
.field private mStatusBar:Lcom/android/systemui/SystemUI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 0

    const-string p0, "SystemBars"

    .line 78
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private createStatusBarFromConfig()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    const v1, 0x7f11029e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUI;

    iput-object v1, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    iget-object v1, p0, Lcom/android/systemui/SystemBars;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    iget-object v1, p0, Lcom/android/systemui/SystemBars;->mComponents:Ljava/util/Map;

    iput-object v1, v0, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;->getStatusBarInjector()Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 71
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;->createStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUI;->start()V

    return-void

    :catch_0
    move-exception v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating status bar component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading status bar component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "No status bar component configured"

    .line 53
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/SystemBars;->andLog(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/SystemBars;->mStatusBar:Lcom/android/systemui/SystemUI;

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/SystemBars;->createStatusBarFromConfig()V

    return-void
.end method
