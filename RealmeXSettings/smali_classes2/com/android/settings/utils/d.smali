.class public final Lcom/android/settings/utils/d;
.super Landroid/view/ContextThemeWrapper;
.source "LocalClassLoaderContextThemeWrapper.java"


# instance fields
.field private a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/android/settings/utils/d;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/utils/d;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
