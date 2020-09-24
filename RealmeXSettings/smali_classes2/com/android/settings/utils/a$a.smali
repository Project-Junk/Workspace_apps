.class public final Lcom/android/settings/utils/a$a;
.super Ljava/lang/Object;
.source "AnnotationSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field public final b:Ljava/lang/Boolean;

.field final c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/settings/utils/a$a;->a:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 97
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/utils/a$a;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 100
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/utils/a$a;->b:Ljava/lang/Boolean;

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/android/settings/utils/a$a;->b:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lcom/android/settings/utils/a$a;->c:Landroid/view/View$OnClickListener;

    return-void

    .line 105
    :cond_2
    new-instance p1, Lcom/android/settings/utils/-$$Lambda$a$a$g9W8D1RFO7VQShaFrSg2uzhJOtw;

    invoke-direct {p1, p3}, Lcom/android/settings/utils/-$$Lambda$a$a$g9W8D1RFO7VQShaFrSg2uzhJOtw;-><init>(Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/android/settings/utils/a$a;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/settings/utils/a$a;->a:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/android/settings/utils/a$a;->c:Landroid/view/View$OnClickListener;

    .line 91
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/utils/a$a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method private static synthetic a(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 109
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Activity was not found for intent, "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "AnnotationSpan.LinkInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$g9W8D1RFO7VQShaFrSg2uzhJOtw(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/utils/a$a;->a(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
