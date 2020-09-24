.class final Lcom/android/settings/flashlight/FlashlightHandleActivity$1;
.super Lcom/android/settings/search/a;
.source "FlashlightHandleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flashlight/FlashlightHandleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12104b

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    const v1, 0x7f120ba2

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/e;->e:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 70
    const-class p1, Lcom/android/settings/flashlight/FlashlightHandleActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    const-string p1, "android.intent.action.MAIN"

    .line 71
    iput-object p1, v0, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    const-string p1, "flashlight"

    .line 72
    iput-object p1, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 73
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
