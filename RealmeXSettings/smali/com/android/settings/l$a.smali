.class public interface abstract Lcom/android/settings/l$a;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/TrustedCredentialsSettings$c;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/function/IntConsumer;)Z
.end method

.method public abstract b(Lcom/android/settings/TrustedCredentialsSettings$c;)V
.end method
