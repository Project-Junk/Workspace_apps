.class public Lcom/coloros/settings/feature/language/localepicker/a;
.super Landroid/widget/ArrayAdapter;
.source "LocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected b:Ljava/util/Locale;

.field protected c:Z

.field protected d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const v0, 0x1020016

    .line 35
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 36
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/a;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    const v0, 0x7f0d01a0

    const v1, 0x1020016

    .line 30
    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/a;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Ljava/util/Locale;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/a;->b:Ljava/util/Locale;

    return-void
.end method
