.class public Lcom/android/settings/homepage/contextualcards/SettingsContextualCardProvider;
.super Lcom/google/android/b/a/a/a/a;
.source "SettingsContextualCardProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/b/a/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/settings/c/a$b;
    .locals 6

    .line 36
    invoke-static {}, Lcom/android/settings/c/a$a;->a()Lcom/android/settings/c/a$a$a;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/a;->f:Landroid/net/Uri;

    .line 37
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/c/a$a$a;->a(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/a;->f:Landroid/net/Uri;

    .line 38
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/c/a$a$a;->b(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v0

    sget-object v1, Lcom/android/settings/c/a$a$b;->d:Lcom/android/settings/c/a$a$b;

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/settings/c/a$a$a;->a(Lcom/android/settings/c/a$a$b;)Lcom/android/settings/c/a$a$a;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/settings/c/a$a$a;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/c/a$a;

    .line 42
    invoke-static {}, Lcom/android/settings/c/a$a;->a()Lcom/android/settings/c/a$a$a;

    move-result-object v1

    sget-object v2, Lcom/android/settings/slices/a;->d:Landroid/net/Uri;

    .line 43
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/c/a$a$a;->a(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v1

    sget-object v2, Lcom/android/settings/slices/a;->d:Landroid/net/Uri;

    .line 44
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/c/a$a$a;->b(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v1

    sget-object v2, Lcom/android/settings/c/a$a$b;->d:Lcom/android/settings/c/a$a$b;

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/settings/c/a$a$a;->a(Lcom/android/settings/c/a$a$b;)Lcom/android/settings/c/a$a$a;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/android/settings/c/a$a$a;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/settings/c/a$a;

    .line 48
    invoke-static {}, Lcom/android/settings/c/a$a;->a()Lcom/android/settings/c/a$a$a;

    move-result-object v2

    sget-object v3, Lcom/android/settings/slices/a;->m:Landroid/net/Uri;

    .line 49
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/c/a$a$a;->a(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v2

    sget-object v3, Lcom/android/settings/slices/a;->m:Landroid/net/Uri;

    .line 50
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/c/a$a$a;->b(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v2

    sget-object v3, Lcom/android/settings/c/a$a$b;->d:Lcom/android/settings/c/a$a$b;

    .line 51
    invoke-virtual {v2, v3}, Lcom/android/settings/c/a$a$a;->a(Lcom/android/settings/c/a$a$b;)Lcom/android/settings/c/a$a$a;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/android/settings/c/a$a$a;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/settings/c/a$a;

    .line 54
    invoke-static {}, Lcom/android/settings/c/a$a;->a()Lcom/android/settings/c/a$a$a;

    move-result-object v3

    sget-object v4, Lcom/android/settings/slices/a;->b:Landroid/net/Uri;

    .line 55
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/c/a$a$a;->a(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v3

    sget-object v4, Lcom/android/settings/slices/a;->b:Landroid/net/Uri;

    .line 56
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/c/a$a$a;->b(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v3

    sget-object v4, Lcom/android/settings/c/a$a$b;->d:Lcom/android/settings/c/a$a$b;

    .line 57
    invoke-virtual {v3, v4}, Lcom/android/settings/c/a$a$a;->a(Lcom/android/settings/c/a$a$b;)Lcom/android/settings/c/a$a$a;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/android/settings/c/a$a$a;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/android/settings/c/a$a;

    .line 59
    sget-object v4, Lcom/android/settings/slices/a;->e:Landroid/net/Uri;

    .line 60
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-static {}, Lcom/android/settings/c/a$a;->a()Lcom/android/settings/c/a$a$a;

    move-result-object v5

    .line 63
    invoke-virtual {v5, v4}, Lcom/android/settings/c/a$a$a;->a(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v5

    .line 64
    invoke-virtual {v5, v4}, Lcom/android/settings/c/a$a$a;->b(Ljava/lang/String;)Lcom/android/settings/c/a$a$a;

    move-result-object v4

    sget-object v5, Lcom/android/settings/c/a$a$b;->c:Lcom/android/settings/c/a$a$b;

    .line 65
    invoke-virtual {v4, v5}, Lcom/android/settings/c/a$a$a;->a(Lcom/android/settings/c/a$a$b;)Lcom/android/settings/c/a$a$a;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/android/settings/c/a$a$a;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/settings/c/a$a;

    .line 67
    invoke-static {}, Lcom/android/settings/c/a$b;->a()Lcom/android/settings/c/a$b$a;

    move-result-object v5

    .line 68
    invoke-virtual {v5, v0}, Lcom/android/settings/c/a$b$a;->a(Lcom/android/settings/c/a$a;)Lcom/android/settings/c/a$b$a;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/settings/c/a$b$a;->a(Lcom/android/settings/c/a$a;)Lcom/android/settings/c/a$b$a;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Lcom/android/settings/c/a$b$a;->a(Lcom/android/settings/c/a$a;)Lcom/android/settings/c/a$b$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v3}, Lcom/android/settings/c/a$b$a;->a(Lcom/android/settings/c/a$a;)Lcom/android/settings/c/a$b$a;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v4}, Lcom/android/settings/c/a$b$a;->a(Lcom/android/settings/c/a$a;)Lcom/android/settings/c/a$b$a;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/android/settings/c/a$b$a;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/c/a$b;

    return-object v0
.end method
