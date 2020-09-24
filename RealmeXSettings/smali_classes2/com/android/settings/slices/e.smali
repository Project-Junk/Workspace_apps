.class public final Lcom/android/settings/slices/e;
.super Ljava/lang/Object;
.source "SliceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/slices/e$b;,
        Lcom/android/settings/slices/e$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/CharSequence;

.field final e:Ljava/lang/String;

.field final f:I

.field final g:Ljava/lang/String;

.field final h:Landroid/net/Uri;

.field final i:Ljava/lang/String;

.field final j:I

.field final k:Z

.field final l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settings/slices/e$a;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    iget-object v0, p1, Lcom/android/settings/slices/e$a;->a:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    .line 2155
    iget-object v0, p1, Lcom/android/settings/slices/e$a;->b:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/android/settings/slices/e;->b:Ljava/lang/String;

    .line 3155
    iget-object v0, p1, Lcom/android/settings/slices/e$a;->c:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/android/settings/slices/e;->c:Ljava/lang/String;

    .line 4155
    iget-object v0, p1, Lcom/android/settings/slices/e$a;->d:Ljava/lang/CharSequence;

    .line 130
    iput-object v0, p0, Lcom/android/settings/slices/e;->d:Ljava/lang/CharSequence;

    .line 5155
    iget-object v0, p1, Lcom/android/settings/slices/e$a;->e:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/android/settings/slices/e;->e:Ljava/lang/String;

    .line 6155
    iget v0, p1, Lcom/android/settings/slices/e$a;->f:I

    .line 132
    iput v0, p0, Lcom/android/settings/slices/e;->f:I

    .line 7155
    iget-object v0, p1, Lcom/android/settings/slices/e$a;->g:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/android/settings/slices/e;->g:Ljava/lang/String;

    .line 8155
    iget-object v0, p1, Lcom/android/settings/slices/e$a;->h:Landroid/net/Uri;

    .line 134
    iput-object v0, p0, Lcom/android/settings/slices/e;->h:Landroid/net/Uri;

    .line 9155
    iget-object v0, p1, Lcom/android/settings/slices/e$a;->i:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/android/settings/slices/e;->i:Ljava/lang/String;

    .line 10155
    iget v0, p1, Lcom/android/settings/slices/e$a;->j:I

    .line 136
    iput v0, p0, Lcom/android/settings/slices/e;->j:I

    .line 11155
    iget-boolean v0, p1, Lcom/android/settings/slices/e$a;->k:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/settings/slices/e;->k:Z

    .line 12155
    iget-object p1, p1, Lcom/android/settings/slices/e$a;->l:Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lcom/android/settings/slices/e;->l:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/slices/e$a;B)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/slices/e;-><init>(Lcom/android/settings/slices/e$a;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 148
    instance-of v0, p1, Lcom/android/settings/slices/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 151
    :cond_0
    check-cast p1, Lcom/android/settings/slices/e;

    .line 152
    iget-object v0, p0, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/settings/slices/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
