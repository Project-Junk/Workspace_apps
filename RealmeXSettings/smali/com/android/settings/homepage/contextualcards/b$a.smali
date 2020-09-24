.class public Lcom/android/settings/homepage/contextualcards/b$a;
.super Ljava/lang/Object;
.source "ContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field b:I

.field public c:D

.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:J

.field i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:I

.field o:I

.field p:J

.field public q:Landroid/graphics/drawable/Drawable;

.field r:Z

.field public s:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field t:Z

.field u:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/android/settings/homepage/contextualcards/b$a;
    .locals 0

    .line 305
    iput p1, p0, Lcom/android/settings/homepage/contextualcards/b$a;->b:I

    return-object p0
.end method

.method public a()Lcom/android/settings/homepage/contextualcards/b;
    .locals 1

    .line 405
    new-instance v0, Lcom/android/settings/homepage/contextualcards/b;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/b;-><init>(Lcom/android/settings/homepage/contextualcards/b$a;)V

    return-object v0
.end method
