.class public final Lcom/android/settings/utils/ManagedServiceSettings$a$a;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ManagedServiceSettings$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/settings/utils/ManagedServiceSettings$a;
    .locals 12

    .line 317
    new-instance v11, Lcom/android/settings/utils/ManagedServiceSettings$a;

    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->e:Ljava/lang/String;

    iget v7, p0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->f:I

    iget v8, p0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->g:I

    iget v9, p0, Lcom/android/settings/utils/ManagedServiceSettings$a$a;->h:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/utils/ManagedServiceSettings$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIB)V

    return-object v11
.end method
