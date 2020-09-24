.class final Lcom/android/settings/slices/e$a;
.super Ljava/lang/Object;
.source "SliceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/slices/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/String;

.field f:I

.field g:Ljava/lang/String;

.field h:Landroid/net/Uri;

.field i:Ljava/lang/String;

.field j:I

.field k:Z

.field l:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/settings/slices/e;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/settings/slices/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/android/settings/slices/e$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/android/settings/slices/e$a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/settings/slices/e$a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/android/settings/slices/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/slices/e;-><init>(Lcom/android/settings/slices/e$a;B)V

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Lcom/android/settings/slices/e$b;

    const-string v1, "Preference Controller cannot be empty"

    invoke-direct {v0, v1}, Lcom/android/settings/slices/e$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    new-instance v0, Lcom/android/settings/slices/e$b;

    const-string v1, "Fragment Name cannot be empty"

    invoke-direct {v0, v1}, Lcom/android/settings/slices/e$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2
    new-instance v0, Lcom/android/settings/slices/e$b;

    const-string v1, "Title cannot be empty"

    invoke-direct {v0, v1}, Lcom/android/settings/slices/e$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_3
    new-instance v0, Lcom/android/settings/slices/e$b;

    const-string v1, "Key cannot be empty"

    invoke-direct {v0, v1}, Lcom/android/settings/slices/e$b;-><init>(Ljava/lang/String;)V

    throw v0
.end method
