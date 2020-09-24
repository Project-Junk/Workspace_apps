.class public final Lcom/coloros/settings/feature/controller/b$a;
.super Ljava/lang/Object;
.source "TypedPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/coloros/settings/feature/controller/b$a;->f:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/coloros/settings/feature/controller/b$a;->g:Ljava/lang/String;

    .line 131
    iput p3, p0, Lcom/coloros/settings/feature/controller/b$a;->h:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/coloros/settings/feature/controller/b$a;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/coloros/settings/feature/controller/b$a;->d:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/coloros/settings/feature/controller/b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/coloros/settings/feature/controller/b;
    .locals 4

    .line 166
    new-instance v0, Lcom/coloros/settings/feature/controller/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/controller/b$a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/controller/b$a;->g:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/settings/feature/controller/b;-><init>(Landroid/content/Context;Ljava/lang/String;B)V

    .line 167
    iget v1, p0, Lcom/coloros/settings/feature/controller/b$a;->h:I

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/controller/b;->a(Lcom/coloros/settings/feature/controller/b;I)V

    .line 168
    iget-object v1, p0, Lcom/coloros/settings/feature/controller/b$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/controller/b$a;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/controller/b;->a(Lcom/coloros/settings/feature/controller/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/coloros/settings/feature/controller/b$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/controller/b;->a(Lcom/coloros/settings/feature/controller/b;Ljava/lang/String;)V

    .line 170
    iget-boolean v1, p0, Lcom/coloros/settings/feature/controller/b$a;->b:Z

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/controller/b;->a(Lcom/coloros/settings/feature/controller/b;Z)V

    .line 171
    iget-boolean v1, p0, Lcom/coloros/settings/feature/controller/b$a;->c:Z

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/controller/b;->b(Lcom/coloros/settings/feature/controller/b;Z)V

    .line 172
    iget-object v1, p0, Lcom/coloros/settings/feature/controller/b$a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/controller/b;->b(Lcom/coloros/settings/feature/controller/b;Ljava/lang/String;)V

    return-object v0
.end method
