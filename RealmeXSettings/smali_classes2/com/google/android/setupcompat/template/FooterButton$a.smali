.class public final Lcom/google/android/setupcompat/template/FooterButton$a;
.super Ljava/lang/Object;
.source "FooterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/template/FooterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View$OnClickListener;

.field public b:I

.field public c:I

.field private final d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 324
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    .line 327
    iput v0, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 330
    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/setupcompat/template/FooterButton$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 341
    iget-object v0, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 7

    .line 364
    new-instance v6, Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v1, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    iget v3, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    iget v4, p0, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;IIB)V

    return-object v6
.end method
